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
#include <iostream>
#include <chrono>
#include "app.h"

int main(int argc, char *argv[])
{

        if (argc != 5)
	{
                printf("FastGlobalRegistration.exe [feature_01] [feature_02] [normals_01] [output_txt]\n");
		return 0;
	}
	CApp app;
	app.ReadFeature(argv[1]);
	app.ReadFeature(argv[2]);
        app.ReadNormals(argv[3]);
        auto t_tot1 = std::chrono::high_resolution_clock::now();
	app.NormalizePoints();
	app.AdvancedMatching();
        double mu=app.OptimizePairwise(true, ITERATION_NUMBER);
        std::cout<<"mu final :" <<mu<<std::endl<<std::endl;
	app.WriteTrans(argv[4]);

        auto t_tot2 = std::chrono::high_resolution_clock::now();
        std::cout<<"total time to get transform :" <<std::chrono::duration_cast<std::chrono::milliseconds>(t_tot2-t_tot1).count()<<" milliseconds"<<std::endl<<std::endl;


	return 0;
}
