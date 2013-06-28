//
//  Shader.fsh
//  mbResolver
//
//  Created by Mat Kelly on 10/8/12.
//  Copyright (c) 2012 SSAI. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}
