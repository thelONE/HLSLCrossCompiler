#ifndef DECODE_H
#define DECODE_H

Shader* DecodeDXBC(uint32_t* data);

//You don't need to call this directly because DecodeDXBC
//will call DecodeDX9BC if the shader looks
//like it is SM1/2/3.
Shader* DecodeDX9BC(const uint32_t* pui32Tokens);

#endif
