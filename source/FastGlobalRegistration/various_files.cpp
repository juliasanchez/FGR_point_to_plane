// ----------------------------------------------------------------------------
// -                       Fast Global Registration                           -
// ----------------------------------------------------------------------------
// The MIT License (MIT)
//
// Copyright (c) Intel Corporation 2016
// Qianyi Zhou <Qianyi.Zhou@gmail.com>
// Jaesik Park <syncle@gmail.com>
// Vladlen Koltun <vkoltun@gmail.com>
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
// IN THE SOFTWARE.
// ----------------------------------------------------------------------------
#include <stdio.h>
#include "app.h"

int main(int argc, char *argv[])
{
    std::stringstream sstm;
    std::string file_address;
    int src;
    int tgt;

    for (int i =2; i<19; i++)
    {
      src=i;
      tgt=i+1;

      CApp app;

      //---------------------------------------STEP 1 : CHOOSE SOURCE AND TARGET---------------------------------------------------------------------

      sstm.str("");
      sstm<<"/home/julia/Documents/data_base/hokuyo/features/Hokuyo_";
      sstm <<i<<".bin";
      file_address = sstm.str();
      const char *src_file(file_address.c_str());
      // Load new scan
      app.ReadFeature(src_file);

      sstm.str("");
      sstm<<"/home/julia/Documents/data_base/hokuyo/features/Hokuyo_";
      sstm <<i+1<<".bin";
      file_address = sstm.str();
      const char *tgt_file=file_address.c_str();
      // Load new scan
      app.ReadFeature(tgt_file);

      //---------------------------------------STEP 2 : REGISTRATION---------------------------------------------------------------------

    app.NormalizePoints();
    app.AdvancedMatching();
    app.OptimizePairwise(true, ITERATION_NUMBER);

      //---------------------------------------STEP 3 : SAVE RESULT---------------------------------------------------------------------
    sstm.str("");
    sstm<<"/home/julia/Documents/data_base/hokuyo/transform/Hokuyo_";
    sstm <<i+1<<"_to_"<<i<<".txt";
    std::string file_address = sstm.str();
    app.WriteTrans(file_address.c_str());
    }

	return 0;
}
