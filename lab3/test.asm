
test.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 f5 33 00 00 	mov    0x33f5(%rip),%rax        # 140004410 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 f6 33 00 00 	mov    0x33f6(%rip),%rax        # 140004420 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 f9 33 00 00 	mov    0x33f9(%rip),%rax        # 140004430 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 5c 33 00 00 	mov    0x335c(%rip),%rax        # 1400043a0 <.refptr.__ImageBase>
   140001044:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000104f:	48 01 d0             	add    %rdx,%rax
   140001052:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 9f 33 00 00 	mov    0x339f(%rip),%rax        # 140004400 <.refptr.__mingw_app_type>
   140001061:	89 0d a5 5f 00 00    	mov    %ecx,0x5fa5(%rip)        # 14000700c <managedapp>
   140001067:	8b 00                	mov    (%rax),%eax
   140001069:	85 c0                	test   %eax,%eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001072:	e8 59 18 00 00       	call   1400028d0 <__set_app_type>
   140001077:	e8 d4 17 00 00       	call   140002850 <__p__fmode>
   14000107c:	48 8b 15 5d 34 00 00 	mov    0x345d(%rip),%rdx        # 1400044e0 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 bc 17 00 00       	call   140002848 <__p__commode>
   14000108c:	48 8b 15 2d 34 00 00 	mov    0x342d(%rip),%rdx        # 1400044c0 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 04 05 00 00       	call   1400015a0 <_setargv>
   14000109c:	48 8b 05 dd 32 00 00 	mov    0x32dd(%rip),%rax        # 140004380 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 16 18 00 00       	call   1400028d0 <__set_app_type>
   1400010ba:	eb bb                	jmp    140001077 <pre_c_init+0x67>
   1400010bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010c0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
   1400010c4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
   1400010c9:	74 45                	je     140001110 <pre_c_init+0x100>
   1400010cb:	66 81 fa 0b 02       	cmp    $0x20b,%dx
   1400010d0:	75 88                	jne    14000105a <pre_c_init+0x4a>
   1400010d2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
   1400010d9:	0f 86 7b ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   1400010df:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
   1400010e5:	31 c9                	xor    %ecx,%ecx
   1400010e7:	85 d2                	test   %edx,%edx
   1400010e9:	0f 95 c1             	setne  %cl
   1400010ec:	e9 69 ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   1400010f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400010f8:	48 8b 0d 01 34 00 00 	mov    0x3401(%rip),%rcx        # 140004500 <.refptr._matherr>
   1400010ff:	e8 0c 0c 00 00       	call   140001d10 <__mingw_setusermatherr>
   140001104:	31 c0                	xor    %eax,%eax
   140001106:	48 83 c4 28          	add    $0x28,%rsp
   14000110a:	c3                   	ret
   14000110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001110:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
   140001114:	0f 86 40 ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   14000111a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
   140001121:	31 c9                	xor    %ecx,%ecx
   140001123:	45 85 c0             	test   %r8d,%r8d
   140001126:	0f 95 c1             	setne  %cl
   140001129:	e9 2c ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   14000112e:	66 90                	xchg   %ax,%ax

0000000140001130 <pre_cpp_init>:
   140001130:	48 83 ec 38          	sub    $0x38,%rsp
   140001134:	48 8b 05 d5 33 00 00 	mov    0x33d5(%rip),%rax        # 140004510 <.refptr._newmode>
   14000113b:	4c 8d 05 d6 5e 00 00 	lea    0x5ed6(%rip),%r8        # 140007018 <envp>
   140001142:	48 8d 15 d7 5e 00 00 	lea    0x5ed7(%rip),%rdx        # 140007020 <argv>
   140001149:	48 8d 0d d8 5e 00 00 	lea    0x5ed8(%rip),%rcx        # 140007028 <argc>
   140001150:	8b 00                	mov    (%rax),%eax
   140001152:	89 05 ac 5e 00 00    	mov    %eax,0x5eac(%rip)        # 140007004 <startinfo>
   140001158:	48 8b 05 71 33 00 00 	mov    0x3371(%rip),%rax        # 1400044d0 <.refptr._dowildcard>
   14000115f:	44 8b 08             	mov    (%rax),%r9d
   140001162:	48 8d 05 9b 5e 00 00 	lea    0x5e9b(%rip),%rax        # 140007004 <startinfo>
   140001169:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   14000116e:	e8 8d 14 00 00       	call   140002600 <__getmainargs>
   140001173:	90                   	nop
   140001174:	48 83 c4 38          	add    $0x38,%rsp
   140001178:	c3                   	ret
   140001179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001180 <__tmainCRTStartup>:
   140001180:	41 54                	push   %r12
   140001182:	55                   	push   %rbp
   140001183:	57                   	push   %rdi
   140001184:	56                   	push   %rsi
   140001185:	53                   	push   %rbx
   140001186:	48 83 ec 20          	sub    $0x20,%rsp
   14000118a:	48 8b 1d cf 32 00 00 	mov    0x32cf(%rip),%rbx        # 140004460 <.refptr.__native_startup_lock>
   140001191:	48 8b 2d a0 71 00 00 	mov    0x71a0(%rip),%rbp        # 140008338 <__imp_Sleep>
   140001198:	31 ff                	xor    %edi,%edi
   14000119a:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   1400011a1:	00 00 
   1400011a3:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011a7:	eb 17                	jmp    1400011c0 <__tmainCRTStartup+0x40>
   1400011a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400011b0:	48 39 c6             	cmp    %rax,%rsi
   1400011b3:	0f 84 67 01 00 00    	je     140001320 <__tmainCRTStartup+0x1a0>
   1400011b9:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   1400011be:	ff d5                	call   *%rbp
   1400011c0:	48 89 f8             	mov    %rdi,%rax
   1400011c3:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
   1400011c8:	48 85 c0             	test   %rax,%rax
   1400011cb:	75 e3                	jne    1400011b0 <__tmainCRTStartup+0x30>
   1400011cd:	48 8b 35 9c 32 00 00 	mov    0x329c(%rip),%rsi        # 140004470 <.refptr.__native_startup_state>
   1400011d4:	31 ff                	xor    %edi,%edi
   1400011d6:	8b 06                	mov    (%rsi),%eax
   1400011d8:	83 f8 01             	cmp    $0x1,%eax
   1400011db:	0f 84 56 01 00 00    	je     140001337 <__tmainCRTStartup+0x1b7>
   1400011e1:	8b 06                	mov    (%rsi),%eax
   1400011e3:	85 c0                	test   %eax,%eax
   1400011e5:	0f 84 b5 01 00 00    	je     1400013a0 <__tmainCRTStartup+0x220>
   1400011eb:	c7 05 13 5e 00 00 01 	movl   $0x1,0x5e13(%rip)        # 140007008 <has_cctor>
   1400011f2:	00 00 00 
   1400011f5:	8b 06                	mov    (%rsi),%eax
   1400011f7:	83 f8 01             	cmp    $0x1,%eax
   1400011fa:	0f 84 4c 01 00 00    	je     14000134c <__tmainCRTStartup+0x1cc>
   140001200:	85 ff                	test   %edi,%edi
   140001202:	0f 84 65 01 00 00    	je     14000136d <__tmainCRTStartup+0x1ed>
   140001208:	48 8b 05 c1 31 00 00 	mov    0x31c1(%rip),%rax        # 1400043d0 <.refptr.__dyn_tls_init_callback>
   14000120f:	48 8b 00             	mov    (%rax),%rax
   140001212:	48 85 c0             	test   %rax,%rax
   140001215:	74 0c                	je     140001223 <__tmainCRTStartup+0xa3>
   140001217:	45 31 c0             	xor    %r8d,%r8d
   14000121a:	ba 02 00 00 00       	mov    $0x2,%edx
   14000121f:	31 c9                	xor    %ecx,%ecx
   140001221:	ff d0                	call   *%rax
   140001223:	e8 48 07 00 00       	call   140001970 <_pei386_runtime_relocator>
   140001228:	48 8b 0d c1 32 00 00 	mov    0x32c1(%rip),%rcx        # 1400044f0 <.refptr._gnu_exception_handler>
   14000122f:	ff 15 fb 70 00 00    	call   *0x70fb(%rip)        # 140008330 <__imp_SetUnhandledExceptionFilter>
   140001235:	48 8b 15 14 32 00 00 	mov    0x3214(%rip),%rdx        # 140004450 <.refptr.__mingw_oldexcpt_handler>
   14000123c:	48 8d 0d bd fd ff ff 	lea    -0x243(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   140001243:	48 89 02             	mov    %rax,(%rdx)
   140001246:	e8 8d 16 00 00       	call   1400028d8 <_set_invalid_parameter_handler>
   14000124b:	e8 30 05 00 00       	call   140001780 <_fpreset>
   140001250:	8b 1d d2 5d 00 00    	mov    0x5dd2(%rip),%ebx        # 140007028 <argc>
   140001256:	8d 7b 01             	lea    0x1(%rbx),%edi
   140001259:	48 63 ff             	movslq %edi,%rdi
   14000125c:	48 c1 e7 03          	shl    $0x3,%rdi
   140001260:	48 89 f9             	mov    %rdi,%rcx
   140001263:	e8 d0 16 00 00       	call   140002938 <malloc>
   140001268:	4c 8b 25 b1 5d 00 00 	mov    0x5db1(%rip),%r12        # 140007020 <argv>
   14000126f:	48 89 c5             	mov    %rax,%rbp
   140001272:	85 db                	test   %ebx,%ebx
   140001274:	0f 8e 46 01 00 00    	jle    1400013c0 <__tmainCRTStartup+0x240>
   14000127a:	48 83 ef 08          	sub    $0x8,%rdi
   14000127e:	31 db                	xor    %ebx,%ebx
   140001280:	49 8b 0c 1c          	mov    (%r12,%rbx,1),%rcx
   140001284:	e8 a7 15 00 00       	call   140002830 <strlen>
   140001289:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000128d:	48 89 f1             	mov    %rsi,%rcx
   140001290:	e8 a3 16 00 00       	call   140002938 <malloc>
   140001295:	49 89 f0             	mov    %rsi,%r8
   140001298:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
   14000129d:	49 8b 14 1c          	mov    (%r12,%rbx,1),%rdx
   1400012a1:	48 89 c1             	mov    %rax,%rcx
   1400012a4:	48 83 c3 08          	add    $0x8,%rbx
   1400012a8:	e8 5b 16 00 00       	call   140002908 <memcpy>
   1400012ad:	48 39 df             	cmp    %rbx,%rdi
   1400012b0:	75 ce                	jne    140001280 <__tmainCRTStartup+0x100>
   1400012b2:	48 01 ef             	add    %rbp,%rdi
   1400012b5:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
   1400012bc:	48 89 2d 5d 5d 00 00 	mov    %rbp,0x5d5d(%rip)        # 140007020 <argv>
   1400012c3:	e8 b8 02 00 00       	call   140001580 <__main>
   1400012c8:	48 8b 05 11 31 00 00 	mov    0x3111(%rip),%rax        # 1400043e0 <.refptr.__imp___initenv>
   1400012cf:	4c 8b 05 42 5d 00 00 	mov    0x5d42(%rip),%r8        # 140007018 <envp>
   1400012d6:	8b 0d 4c 5d 00 00    	mov    0x5d4c(%rip),%ecx        # 140007028 <argc>
   1400012dc:	48 8b 00             	mov    (%rax),%rax
   1400012df:	4c 89 00             	mov    %r8,(%rax)
   1400012e2:	48 8b 15 37 5d 00 00 	mov    0x5d37(%rip),%rdx        # 140007020 <argv>
   1400012e9:	e8 62 01 00 00       	call   140001450 <main>
   1400012ee:	8b 0d 18 5d 00 00    	mov    0x5d18(%rip),%ecx        # 14000700c <managedapp>
   1400012f4:	89 05 16 5d 00 00    	mov    %eax,0x5d16(%rip)        # 140007010 <mainret>
   1400012fa:	85 c9                	test   %ecx,%ecx
   1400012fc:	0f 84 c6 00 00 00    	je     1400013c8 <__tmainCRTStartup+0x248>
   140001302:	8b 15 00 5d 00 00    	mov    0x5d00(%rip),%edx        # 140007008 <has_cctor>
   140001308:	85 d2                	test   %edx,%edx
   14000130a:	74 74                	je     140001380 <__tmainCRTStartup+0x200>
   14000130c:	48 83 c4 20          	add    $0x20,%rsp
   140001310:	5b                   	pop    %rbx
   140001311:	5e                   	pop    %rsi
   140001312:	5f                   	pop    %rdi
   140001313:	5d                   	pop    %rbp
   140001314:	41 5c                	pop    %r12
   140001316:	c3                   	ret
   140001317:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000131e:	00 00 
   140001320:	48 8b 35 49 31 00 00 	mov    0x3149(%rip),%rsi        # 140004470 <.refptr.__native_startup_state>
   140001327:	bf 01 00 00 00       	mov    $0x1,%edi
   14000132c:	8b 06                	mov    (%rsi),%eax
   14000132e:	83 f8 01             	cmp    $0x1,%eax
   140001331:	0f 85 aa fe ff ff    	jne    1400011e1 <__tmainCRTStartup+0x61>
   140001337:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   14000133c:	e8 df 13 00 00       	call   140002720 <_amsg_exit>
   140001341:	8b 06                	mov    (%rsi),%eax
   140001343:	83 f8 01             	cmp    $0x1,%eax
   140001346:	0f 85 b4 fe ff ff    	jne    140001200 <__tmainCRTStartup+0x80>
   14000134c:	48 8b 15 3d 31 00 00 	mov    0x313d(%rip),%rdx        # 140004490 <.refptr.__xc_z>
   140001353:	48 8b 0d 26 31 00 00 	mov    0x3126(%rip),%rcx        # 140004480 <.refptr.__xc_a>
   14000135a:	e8 69 15 00 00       	call   1400028c8 <_initterm>
   14000135f:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   140001365:	85 ff                	test   %edi,%edi
   140001367:	0f 85 9b fe ff ff    	jne    140001208 <__tmainCRTStartup+0x88>
   14000136d:	31 c0                	xor    %eax,%eax
   14000136f:	48 87 03             	xchg   %rax,(%rbx)
   140001372:	e9 91 fe ff ff       	jmp    140001208 <__tmainCRTStartup+0x88>
   140001377:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000137e:	00 00 
   140001380:	e8 03 15 00 00       	call   140002888 <_cexit>
   140001385:	8b 05 85 5c 00 00    	mov    0x5c85(%rip),%eax        # 140007010 <mainret>
   14000138b:	48 83 c4 20          	add    $0x20,%rsp
   14000138f:	5b                   	pop    %rbx
   140001390:	5e                   	pop    %rsi
   140001391:	5f                   	pop    %rdi
   140001392:	5d                   	pop    %rbp
   140001393:	41 5c                	pop    %r12
   140001395:	c3                   	ret
   140001396:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000139d:	00 00 00 
   1400013a0:	48 8b 15 09 31 00 00 	mov    0x3109(%rip),%rdx        # 1400044b0 <.refptr.__xi_z>
   1400013a7:	48 8b 0d f2 30 00 00 	mov    0x30f2(%rip),%rcx        # 1400044a0 <.refptr.__xi_a>
   1400013ae:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   1400013b4:	e8 0f 15 00 00       	call   1400028c8 <_initterm>
   1400013b9:	e9 37 fe ff ff       	jmp    1400011f5 <__tmainCRTStartup+0x75>
   1400013be:	66 90                	xchg   %ax,%ax
   1400013c0:	48 89 c7             	mov    %rax,%rdi
   1400013c3:	e9 ed fe ff ff       	jmp    1400012b5 <__tmainCRTStartup+0x135>
   1400013c8:	89 c1                	mov    %eax,%ecx
   1400013ca:	e8 19 15 00 00       	call   1400028e8 <exit>
   1400013cf:	90                   	nop

00000001400013d0 <WinMainCRTStartup>:
   1400013d0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013d4 <.l_startw>:
   1400013d4:	48 8b 05 25 30 00 00 	mov    0x3025(%rip),%rax        # 140004400 <.refptr.__mingw_app_type>
   1400013db:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400013e1:	e8 9a fd ff ff       	call   140001180 <__tmainCRTStartup>
   1400013e6:	90                   	nop

00000001400013e7 <.l_endw>:
   1400013e7:	90                   	nop
   1400013e8:	48 83 c4 28          	add    $0x28,%rsp
   1400013ec:	c3                   	ret
   1400013ed:	0f 1f 00             	nopl   (%rax)

00000001400013f0 <mainCRTStartup>:
   1400013f0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013f4 <.l_start>:
   1400013f4:	48 8b 05 05 30 00 00 	mov    0x3005(%rip),%rax        # 140004400 <.refptr.__mingw_app_type>
   1400013fb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001401:	e8 7a fd ff ff       	call   140001180 <__tmainCRTStartup>
   140001406:	90                   	nop

0000000140001407 <.l_end>:
   140001407:	90                   	nop
   140001408:	48 83 c4 28          	add    $0x28,%rsp
   14000140c:	c3                   	ret
   14000140d:	0f 1f 00             	nopl   (%rax)

0000000140001410 <atexit>:
   140001410:	48 83 ec 28          	sub    $0x28,%rsp
   140001414:	e8 c7 12 00 00       	call   1400026e0 <_onexit>
   140001419:	48 83 f8 01          	cmp    $0x1,%rax
   14000141d:	19 c0                	sbb    %eax,%eax
   14000141f:	48 83 c4 28          	add    $0x28,%rsp
   140001423:	c3                   	ret
   140001424:	90                   	nop
   140001425:	90                   	nop
   140001426:	90                   	nop
   140001427:	90                   	nop
   140001428:	90                   	nop
   140001429:	90                   	nop
   14000142a:	90                   	nop
   14000142b:	90                   	nop
   14000142c:	90                   	nop
   14000142d:	90                   	nop
   14000142e:	90                   	nop
   14000142f:	90                   	nop

0000000140001430 <__gcc_register_frame>:
   140001430:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 140001440 <__gcc_deregister_frame>
   140001437:	e9 d4 ff ff ff       	jmp    140001410 <atexit>
   14000143c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001440 <__gcc_deregister_frame>:
   140001440:	c3                   	ret
   140001441:	90                   	nop
   140001442:	90                   	nop
   140001443:	90                   	nop
   140001444:	90                   	nop
   140001445:	90                   	nop
   140001446:	90                   	nop
   140001447:	90                   	nop
   140001448:	90                   	nop
   140001449:	90                   	nop
   14000144a:	90                   	nop
   14000144b:	90                   	nop
   14000144c:	90                   	nop
   14000144d:	90                   	nop
   14000144e:	90                   	nop
   14000144f:	90                   	nop

0000000140001450 <main>:
   140001450:	55                   	push   %rbp
   140001451:	48 89 e5             	mov    %rsp,%rbp
   140001454:	48 83 ec 40          	sub    $0x40,%rsp
   140001458:	e8 23 01 00 00       	call   140001580 <__main>
   14000145d:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
   140001461:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140001466:	41 b9 3f 00 0f 00    	mov    $0xf003f,%r9d
   14000146c:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   140001472:	48 8d 05 87 2b 00 00 	lea    0x2b87(%rip),%rax        # 140004000 <.rdata>
   140001479:	48 89 c2             	mov    %rax,%rdx
   14000147c:	48 c7 c1 01 00 00 80 	mov    $0xffffffff80000001,%rcx
   140001483:	48 8b 05 6e 6e 00 00 	mov    0x6e6e(%rip),%rax        # 1400082f8 <__imp_RegOpenKeyExA>
   14000148a:	ff d0                	call   *%rax
   14000148c:	89 45 fc             	mov    %eax,-0x4(%rbp)
   14000148f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140001493:	48 8d 15 6b 2b 00 00 	lea    0x2b6b(%rip),%rdx        # 140004005 <.rdata+0x5>
   14000149a:	48 89 c1             	mov    %rax,%rcx
   14000149d:	48 8b 05 4c 6e 00 00 	mov    0x6e4c(%rip),%rax        # 1400082f0 <__imp_RegDeleteKeyA>
   1400014a4:	ff d0                	call   *%rax
   1400014a6:	89 45 fc             	mov    %eax,-0x4(%rbp)
   1400014a9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400014ad:	48 89 c1             	mov    %rax,%rcx
   1400014b0:	48 8b 05 31 6e 00 00 	mov    0x6e31(%rip),%rax        # 1400082e8 <__IAT_start__>
   1400014b7:	ff d0                	call   *%rax
   1400014b9:	e8 92 14 00 00       	call   140002950 <_getch>
   1400014be:	90                   	nop
   1400014bf:	48 83 c4 40          	add    $0x40,%rsp
   1400014c3:	5d                   	pop    %rbp
   1400014c4:	c3                   	ret
   1400014c5:	90                   	nop
   1400014c6:	90                   	nop
   1400014c7:	90                   	nop
   1400014c8:	90                   	nop
   1400014c9:	90                   	nop
   1400014ca:	90                   	nop
   1400014cb:	90                   	nop
   1400014cc:	90                   	nop
   1400014cd:	90                   	nop
   1400014ce:	90                   	nop
   1400014cf:	90                   	nop

00000001400014d0 <__do_global_dtors>:
   1400014d0:	48 83 ec 28          	sub    $0x28,%rsp
   1400014d4:	48 8b 05 25 1b 00 00 	mov    0x1b25(%rip),%rax        # 140003000 <__data_start__>
   1400014db:	48 8b 00             	mov    (%rax),%rax
   1400014de:	48 85 c0             	test   %rax,%rax
   1400014e1:	74 22                	je     140001505 <__do_global_dtors+0x35>
   1400014e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400014e8:	ff d0                	call   *%rax
   1400014ea:	48 8b 05 0f 1b 00 00 	mov    0x1b0f(%rip),%rax        # 140003000 <__data_start__>
   1400014f1:	48 8d 50 08          	lea    0x8(%rax),%rdx
   1400014f5:	48 8b 40 08          	mov    0x8(%rax),%rax
   1400014f9:	48 89 15 00 1b 00 00 	mov    %rdx,0x1b00(%rip)        # 140003000 <__data_start__>
   140001500:	48 85 c0             	test   %rax,%rax
   140001503:	75 e3                	jne    1400014e8 <__do_global_dtors+0x18>
   140001505:	48 83 c4 28          	add    $0x28,%rsp
   140001509:	c3                   	ret
   14000150a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001510 <__do_global_ctors>:
   140001510:	56                   	push   %rsi
   140001511:	53                   	push   %rbx
   140001512:	48 83 ec 28          	sub    $0x28,%rsp
   140001516:	48 8b 15 73 2e 00 00 	mov    0x2e73(%rip),%rdx        # 140004390 <.refptr.__CTOR_LIST__>
   14000151d:	48 8b 02             	mov    (%rdx),%rax
   140001520:	89 c1                	mov    %eax,%ecx
   140001522:	83 f8 ff             	cmp    $0xffffffff,%eax
   140001525:	74 39                	je     140001560 <__do_global_ctors+0x50>
   140001527:	85 c9                	test   %ecx,%ecx
   140001529:	74 20                	je     14000154b <__do_global_ctors+0x3b>
   14000152b:	89 c8                	mov    %ecx,%eax
   14000152d:	83 e9 01             	sub    $0x1,%ecx
   140001530:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   140001534:	48 29 c8             	sub    %rcx,%rax
   140001537:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   14000153c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001540:	ff 13                	call   *(%rbx)
   140001542:	48 83 eb 08          	sub    $0x8,%rbx
   140001546:	48 39 f3             	cmp    %rsi,%rbx
   140001549:	75 f5                	jne    140001540 <__do_global_ctors+0x30>
   14000154b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 1400014d0 <__do_global_dtors>
   140001552:	48 83 c4 28          	add    $0x28,%rsp
   140001556:	5b                   	pop    %rbx
   140001557:	5e                   	pop    %rsi
   140001558:	e9 b3 fe ff ff       	jmp    140001410 <atexit>
   14000155d:	0f 1f 00             	nopl   (%rax)
   140001560:	31 c0                	xor    %eax,%eax
   140001562:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001568:	44 8d 40 01          	lea    0x1(%rax),%r8d
   14000156c:	89 c1                	mov    %eax,%ecx
   14000156e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   140001573:	4c 89 c0             	mov    %r8,%rax
   140001576:	75 f0                	jne    140001568 <__do_global_ctors+0x58>
   140001578:	eb ad                	jmp    140001527 <__do_global_ctors+0x17>
   14000157a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001580 <__main>:
   140001580:	8b 05 aa 5a 00 00    	mov    0x5aaa(%rip),%eax        # 140007030 <initialized>
   140001586:	85 c0                	test   %eax,%eax
   140001588:	74 06                	je     140001590 <__main+0x10>
   14000158a:	c3                   	ret
   14000158b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001590:	c7 05 96 5a 00 00 01 	movl   $0x1,0x5a96(%rip)        # 140007030 <initialized>
   140001597:	00 00 00 
   14000159a:	e9 71 ff ff ff       	jmp    140001510 <__do_global_ctors>
   14000159f:	90                   	nop

00000001400015a0 <_setargv>:
   1400015a0:	31 c0                	xor    %eax,%eax
   1400015a2:	c3                   	ret
   1400015a3:	90                   	nop
   1400015a4:	90                   	nop
   1400015a5:	90                   	nop
   1400015a6:	90                   	nop
   1400015a7:	90                   	nop
   1400015a8:	90                   	nop
   1400015a9:	90                   	nop
   1400015aa:	90                   	nop
   1400015ab:	90                   	nop
   1400015ac:	90                   	nop
   1400015ad:	90                   	nop
   1400015ae:	90                   	nop
   1400015af:	90                   	nop

00000001400015b0 <__dyn_tls_dtor>:
   1400015b0:	48 83 ec 28          	sub    $0x28,%rsp
   1400015b4:	83 fa 03             	cmp    $0x3,%edx
   1400015b7:	74 17                	je     1400015d0 <__dyn_tls_dtor+0x20>
   1400015b9:	85 d2                	test   %edx,%edx
   1400015bb:	74 13                	je     1400015d0 <__dyn_tls_dtor+0x20>
   1400015bd:	b8 01 00 00 00       	mov    $0x1,%eax
   1400015c2:	48 83 c4 28          	add    $0x28,%rsp
   1400015c6:	c3                   	ret
   1400015c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400015ce:	00 00 
   1400015d0:	e8 7b 0a 00 00       	call   140002050 <__mingw_TLScallback>
   1400015d5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400015da:	48 83 c4 28          	add    $0x28,%rsp
   1400015de:	c3                   	ret
   1400015df:	90                   	nop

00000001400015e0 <__dyn_tls_init>:
   1400015e0:	56                   	push   %rsi
   1400015e1:	53                   	push   %rbx
   1400015e2:	48 83 ec 28          	sub    $0x28,%rsp
   1400015e6:	48 8b 05 83 2d 00 00 	mov    0x2d83(%rip),%rax        # 140004370 <.refptr._CRT_MT>
   1400015ed:	83 38 02             	cmpl   $0x2,(%rax)
   1400015f0:	74 06                	je     1400015f8 <__dyn_tls_init+0x18>
   1400015f2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   1400015f8:	83 fa 02             	cmp    $0x2,%edx
   1400015fb:	74 13                	je     140001610 <__dyn_tls_init+0x30>
   1400015fd:	83 fa 01             	cmp    $0x1,%edx
   140001600:	74 4e                	je     140001650 <__dyn_tls_init+0x70>
   140001602:	b8 01 00 00 00       	mov    $0x1,%eax
   140001607:	48 83 c4 28          	add    $0x28,%rsp
   14000160b:	5b                   	pop    %rbx
   14000160c:	5e                   	pop    %rsi
   14000160d:	c3                   	ret
   14000160e:	66 90                	xchg   %ax,%ax
   140001610:	48 8d 1d 41 7a 00 00 	lea    0x7a41(%rip),%rbx        # 140009058 <__xd_z>
   140001617:	48 8d 35 3a 7a 00 00 	lea    0x7a3a(%rip),%rsi        # 140009058 <__xd_z>
   14000161e:	48 39 f3             	cmp    %rsi,%rbx
   140001621:	74 df                	je     140001602 <__dyn_tls_init+0x22>
   140001623:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001628:	48 8b 03             	mov    (%rbx),%rax
   14000162b:	48 85 c0             	test   %rax,%rax
   14000162e:	74 02                	je     140001632 <__dyn_tls_init+0x52>
   140001630:	ff d0                	call   *%rax
   140001632:	48 83 c3 08          	add    $0x8,%rbx
   140001636:	48 39 f3             	cmp    %rsi,%rbx
   140001639:	75 ed                	jne    140001628 <__dyn_tls_init+0x48>
   14000163b:	b8 01 00 00 00       	mov    $0x1,%eax
   140001640:	48 83 c4 28          	add    $0x28,%rsp
   140001644:	5b                   	pop    %rbx
   140001645:	5e                   	pop    %rsi
   140001646:	c3                   	ret
   140001647:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000164e:	00 00 
   140001650:	e8 fb 09 00 00       	call   140002050 <__mingw_TLScallback>
   140001655:	b8 01 00 00 00       	mov    $0x1,%eax
   14000165a:	48 83 c4 28          	add    $0x28,%rsp
   14000165e:	5b                   	pop    %rbx
   14000165f:	5e                   	pop    %rsi
   140001660:	c3                   	ret
   140001661:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001668:	00 00 00 00 
   14000166c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001670 <__tlregdtor>:
   140001670:	31 c0                	xor    %eax,%eax
   140001672:	c3                   	ret
   140001673:	90                   	nop
   140001674:	90                   	nop
   140001675:	90                   	nop
   140001676:	90                   	nop
   140001677:	90                   	nop
   140001678:	90                   	nop
   140001679:	90                   	nop
   14000167a:	90                   	nop
   14000167b:	90                   	nop
   14000167c:	90                   	nop
   14000167d:	90                   	nop
   14000167e:	90                   	nop
   14000167f:	90                   	nop

0000000140001680 <_matherr>:
   140001680:	56                   	push   %rsi
   140001681:	53                   	push   %rbx
   140001682:	48 83 ec 78          	sub    $0x78,%rsp
   140001686:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   14000168b:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
   140001690:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
   140001696:	83 39 06             	cmpl   $0x6,(%rcx)
   140001699:	0f 87 cd 00 00 00    	ja     14000176c <_matherr+0xec>
   14000169f:	8b 01                	mov    (%rcx),%eax
   1400016a1:	48 8d 15 fc 2a 00 00 	lea    0x2afc(%rip),%rdx        # 1400041a4 <.rdata+0x124>
   1400016a8:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   1400016ac:	48 01 d0             	add    %rdx,%rax
   1400016af:	ff e0                	jmp    *%rax
   1400016b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400016b8:	48 8d 1d e0 29 00 00 	lea    0x29e0(%rip),%rbx        # 14000409f <.rdata+0x1f>
   1400016bf:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   1400016c5:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   1400016ca:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   1400016cf:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   1400016d3:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400016d8:	e8 63 11 00 00       	call   140002840 <__acrt_iob_func>
   1400016dd:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   1400016e4:	49 89 d8             	mov    %rbx,%r8
   1400016e7:	48 8d 15 8a 2a 00 00 	lea    0x2a8a(%rip),%rdx        # 140004178 <.rdata+0xf8>
   1400016ee:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   1400016f4:	48 89 c1             	mov    %rax,%rcx
   1400016f7:	49 89 f1             	mov    %rsi,%r9
   1400016fa:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   140001700:	e8 ab 0e 00 00       	call   1400025b0 <fprintf>
   140001705:	90                   	nop
   140001706:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
   14000170b:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
   140001710:	31 c0                	xor    %eax,%eax
   140001712:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
   140001718:	48 83 c4 78          	add    $0x78,%rsp
   14000171c:	5b                   	pop    %rbx
   14000171d:	5e                   	pop    %rsi
   14000171e:	c3                   	ret
   14000171f:	90                   	nop
   140001720:	48 8d 1d 59 29 00 00 	lea    0x2959(%rip),%rbx        # 140004080 <.rdata>
   140001727:	eb 96                	jmp    1400016bf <_matherr+0x3f>
   140001729:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001730:	48 8d 1d a9 29 00 00 	lea    0x29a9(%rip),%rbx        # 1400040e0 <.rdata+0x60>
   140001737:	eb 86                	jmp    1400016bf <_matherr+0x3f>
   140001739:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001740:	48 8d 1d 79 29 00 00 	lea    0x2979(%rip),%rbx        # 1400040c0 <.rdata+0x40>
   140001747:	e9 73 ff ff ff       	jmp    1400016bf <_matherr+0x3f>
   14000174c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001750:	48 8d 1d d9 29 00 00 	lea    0x29d9(%rip),%rbx        # 140004130 <.rdata+0xb0>
   140001757:	e9 63 ff ff ff       	jmp    1400016bf <_matherr+0x3f>
   14000175c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001760:	48 8d 1d a1 29 00 00 	lea    0x29a1(%rip),%rbx        # 140004108 <.rdata+0x88>
   140001767:	e9 53 ff ff ff       	jmp    1400016bf <_matherr+0x3f>
   14000176c:	48 8d 1d f3 29 00 00 	lea    0x29f3(%rip),%rbx        # 140004166 <.rdata+0xe6>
   140001773:	e9 47 ff ff ff       	jmp    1400016bf <_matherr+0x3f>
   140001778:	90                   	nop
   140001779:	90                   	nop
   14000177a:	90                   	nop
   14000177b:	90                   	nop
   14000177c:	90                   	nop
   14000177d:	90                   	nop
   14000177e:	90                   	nop
   14000177f:	90                   	nop

0000000140001780 <_fpreset>:
   140001780:	db e3                	fninit
   140001782:	c3                   	ret
   140001783:	90                   	nop
   140001784:	90                   	nop
   140001785:	90                   	nop
   140001786:	90                   	nop
   140001787:	90                   	nop
   140001788:	90                   	nop
   140001789:	90                   	nop
   14000178a:	90                   	nop
   14000178b:	90                   	nop
   14000178c:	90                   	nop
   14000178d:	90                   	nop
   14000178e:	90                   	nop
   14000178f:	90                   	nop

0000000140001790 <__report_error>:
   140001790:	56                   	push   %rsi
   140001791:	53                   	push   %rbx
   140001792:	48 83 ec 38          	sub    $0x38,%rsp
   140001796:	48 89 cb             	mov    %rcx,%rbx
   140001799:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   14000179e:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400017a3:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   1400017a8:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   1400017ad:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   1400017b2:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   1400017b7:	e8 84 10 00 00       	call   140002840 <__acrt_iob_func>
   1400017bc:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   1400017c2:	ba 01 00 00 00       	mov    $0x1,%edx
   1400017c7:	48 8d 0d f2 29 00 00 	lea    0x29f2(%rip),%rcx        # 1400041c0 <.rdata>
   1400017ce:	49 89 c1             	mov    %rax,%r9
   1400017d1:	e8 92 10 00 00       	call   140002868 <fwrite>
   1400017d6:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
   1400017db:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400017e0:	e8 5b 10 00 00       	call   140002840 <__acrt_iob_func>
   1400017e5:	48 89 da             	mov    %rbx,%rdx
   1400017e8:	48 89 c1             	mov    %rax,%rcx
   1400017eb:	49 89 f0             	mov    %rsi,%r8
   1400017ee:	e8 9d 0d 00 00       	call   140002590 <vfprintf>
   1400017f3:	e8 e8 10 00 00       	call   1400028e0 <abort>
   1400017f8:	90                   	nop
   1400017f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001800 <mark_section_writable>:
   140001800:	57                   	push   %rdi
   140001801:	56                   	push   %rsi
   140001802:	53                   	push   %rbx
   140001803:	48 83 ec 50          	sub    $0x50,%rsp
   140001807:	48 63 35 86 58 00 00 	movslq 0x5886(%rip),%rsi        # 140007094 <maxSections>
   14000180e:	48 89 cb             	mov    %rcx,%rbx
   140001811:	85 f6                	test   %esi,%esi
   140001813:	0f 8e 17 01 00 00    	jle    140001930 <mark_section_writable+0x130>
   140001819:	48 8b 05 78 58 00 00 	mov    0x5878(%rip),%rax        # 140007098 <the_secs>
   140001820:	45 31 c9             	xor    %r9d,%r9d
   140001823:	48 83 c0 18          	add    $0x18,%rax
   140001827:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000182e:	00 00 
   140001830:	4c 8b 00             	mov    (%rax),%r8
   140001833:	4c 39 c3             	cmp    %r8,%rbx
   140001836:	72 13                	jb     14000184b <mark_section_writable+0x4b>
   140001838:	48 8b 50 08          	mov    0x8(%rax),%rdx
   14000183c:	8b 52 08             	mov    0x8(%rdx),%edx
   14000183f:	49 01 d0             	add    %rdx,%r8
   140001842:	4c 39 c3             	cmp    %r8,%rbx
   140001845:	0f 82 8a 00 00 00    	jb     1400018d5 <mark_section_writable+0xd5>
   14000184b:	41 83 c1 01          	add    $0x1,%r9d
   14000184f:	48 83 c0 28          	add    $0x28,%rax
   140001853:	41 39 f1             	cmp    %esi,%r9d
   140001856:	75 d8                	jne    140001830 <mark_section_writable+0x30>
   140001858:	48 89 d9             	mov    %rbx,%rcx
   14000185b:	e8 10 0a 00 00       	call   140002270 <__mingw_GetSectionForAddress>
   140001860:	48 89 c7             	mov    %rax,%rdi
   140001863:	48 85 c0             	test   %rax,%rax
   140001866:	0f 84 e6 00 00 00    	je     140001952 <mark_section_writable+0x152>
   14000186c:	48 8b 05 25 58 00 00 	mov    0x5825(%rip),%rax        # 140007098 <the_secs>
   140001873:	48 8d 1c b6          	lea    (%rsi,%rsi,4),%rbx
   140001877:	48 c1 e3 03          	shl    $0x3,%rbx
   14000187b:	48 01 d8             	add    %rbx,%rax
   14000187e:	48 89 78 20          	mov    %rdi,0x20(%rax)
   140001882:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001888:	e8 23 0b 00 00       	call   1400023b0 <_GetPEImageBase>
   14000188d:	8b 57 0c             	mov    0xc(%rdi),%edx
   140001890:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140001896:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   14000189a:	48 8b 05 f7 57 00 00 	mov    0x57f7(%rip),%rax        # 140007098 <the_secs>
   1400018a1:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   1400018a6:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   1400018ab:	ff 15 9f 6a 00 00    	call   *0x6a9f(%rip)        # 140008350 <__imp_VirtualQuery>
   1400018b1:	48 85 c0             	test   %rax,%rax
   1400018b4:	0f 84 7d 00 00 00    	je     140001937 <mark_section_writable+0x137>
   1400018ba:	8b 44 24 44          	mov    0x44(%rsp),%eax
   1400018be:	8d 50 fc             	lea    -0x4(%rax),%edx
   1400018c1:	83 e2 fb             	and    $0xfffffffb,%edx
   1400018c4:	74 08                	je     1400018ce <mark_section_writable+0xce>
   1400018c6:	8d 50 c0             	lea    -0x40(%rax),%edx
   1400018c9:	83 e2 bf             	and    $0xffffffbf,%edx
   1400018cc:	75 12                	jne    1400018e0 <mark_section_writable+0xe0>
   1400018ce:	83 05 bf 57 00 00 01 	addl   $0x1,0x57bf(%rip)        # 140007094 <maxSections>
   1400018d5:	48 83 c4 50          	add    $0x50,%rsp
   1400018d9:	5b                   	pop    %rbx
   1400018da:	5e                   	pop    %rsi
   1400018db:	5f                   	pop    %rdi
   1400018dc:	c3                   	ret
   1400018dd:	0f 1f 00             	nopl   (%rax)
   1400018e0:	83 f8 02             	cmp    $0x2,%eax
   1400018e3:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400018e8:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   1400018ed:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   1400018f3:	b8 04 00 00 00       	mov    $0x4,%eax
   1400018f8:	44 0f 44 c0          	cmove  %eax,%r8d
   1400018fc:	48 03 1d 95 57 00 00 	add    0x5795(%rip),%rbx        # 140007098 <the_secs>
   140001903:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   140001907:	49 89 d9             	mov    %rbx,%r9
   14000190a:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   14000190e:	ff 15 34 6a 00 00    	call   *0x6a34(%rip)        # 140008348 <__imp_VirtualProtect>
   140001914:	85 c0                	test   %eax,%eax
   140001916:	75 b6                	jne    1400018ce <mark_section_writable+0xce>
   140001918:	ff 15 fa 69 00 00    	call   *0x69fa(%rip)        # 140008318 <__imp_GetLastError>
   14000191e:	48 8d 0d 13 29 00 00 	lea    0x2913(%rip),%rcx        # 140004238 <.rdata+0x78>
   140001925:	89 c2                	mov    %eax,%edx
   140001927:	e8 64 fe ff ff       	call   140001790 <__report_error>
   14000192c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001930:	31 f6                	xor    %esi,%esi
   140001932:	e9 21 ff ff ff       	jmp    140001858 <mark_section_writable+0x58>
   140001937:	48 8b 05 5a 57 00 00 	mov    0x575a(%rip),%rax        # 140007098 <the_secs>
   14000193e:	8b 57 08             	mov    0x8(%rdi),%edx
   140001941:	48 8d 0d b8 28 00 00 	lea    0x28b8(%rip),%rcx        # 140004200 <.rdata+0x40>
   140001948:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   14000194d:	e8 3e fe ff ff       	call   140001790 <__report_error>
   140001952:	48 89 da             	mov    %rbx,%rdx
   140001955:	48 8d 0d 84 28 00 00 	lea    0x2884(%rip),%rcx        # 1400041e0 <.rdata+0x20>
   14000195c:	e8 2f fe ff ff       	call   140001790 <__report_error>
   140001961:	90                   	nop
   140001962:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001969:	00 00 00 00 
   14000196d:	0f 1f 00             	nopl   (%rax)

0000000140001970 <_pei386_runtime_relocator>:
   140001970:	55                   	push   %rbp
   140001971:	41 57                	push   %r15
   140001973:	41 56                	push   %r14
   140001975:	41 55                	push   %r13
   140001977:	41 54                	push   %r12
   140001979:	57                   	push   %rdi
   14000197a:	56                   	push   %rsi
   14000197b:	53                   	push   %rbx
   14000197c:	48 83 ec 48          	sub    $0x48,%rsp
   140001980:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140001985:	44 8b 25 04 57 00 00 	mov    0x5704(%rip),%r12d        # 140007090 <was_init.0>
   14000198c:	45 85 e4             	test   %r12d,%r12d
   14000198f:	74 17                	je     1400019a8 <_pei386_runtime_relocator+0x38>
   140001991:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140001995:	5b                   	pop    %rbx
   140001996:	5e                   	pop    %rsi
   140001997:	5f                   	pop    %rdi
   140001998:	41 5c                	pop    %r12
   14000199a:	41 5d                	pop    %r13
   14000199c:	41 5e                	pop    %r14
   14000199e:	41 5f                	pop    %r15
   1400019a0:	5d                   	pop    %rbp
   1400019a1:	c3                   	ret
   1400019a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400019a8:	c7 05 de 56 00 00 01 	movl   $0x1,0x56de(%rip)        # 140007090 <was_init.0>
   1400019af:	00 00 00 
   1400019b2:	e8 39 09 00 00       	call   1400022f0 <__mingw_GetSectionCount>
   1400019b7:	48 98                	cltq
   1400019b9:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   1400019bd:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   1400019c4:	00 
   1400019c5:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   1400019c9:	e8 82 0b 00 00       	call   140002550 <___chkstk_ms>
   1400019ce:	4c 8b 2d db 29 00 00 	mov    0x29db(%rip),%r13        # 1400043b0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   1400019d5:	48 8b 1d e4 29 00 00 	mov    0x29e4(%rip),%rbx        # 1400043c0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   1400019dc:	c7 05 ae 56 00 00 00 	movl   $0x0,0x56ae(%rip)        # 140007094 <maxSections>
   1400019e3:	00 00 00 
   1400019e6:	48 29 c4             	sub    %rax,%rsp
   1400019e9:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   1400019ee:	48 89 05 a3 56 00 00 	mov    %rax,0x56a3(%rip)        # 140007098 <the_secs>
   1400019f5:	4c 89 e8             	mov    %r13,%rax
   1400019f8:	48 29 d8             	sub    %rbx,%rax
   1400019fb:	48 83 f8 07          	cmp    $0x7,%rax
   1400019ff:	7e 90                	jle    140001991 <_pei386_runtime_relocator+0x21>
   140001a01:	8b 13                	mov    (%rbx),%edx
   140001a03:	48 83 f8 0b          	cmp    $0xb,%rax
   140001a07:	0f 8f 03 01 00 00    	jg     140001b10 <_pei386_runtime_relocator+0x1a0>
   140001a0d:	8b 03                	mov    (%rbx),%eax
   140001a0f:	85 c0                	test   %eax,%eax
   140001a11:	0f 85 69 02 00 00    	jne    140001c80 <_pei386_runtime_relocator+0x310>
   140001a17:	8b 43 04             	mov    0x4(%rbx),%eax
   140001a1a:	85 c0                	test   %eax,%eax
   140001a1c:	0f 85 5e 02 00 00    	jne    140001c80 <_pei386_runtime_relocator+0x310>
   140001a22:	8b 53 08             	mov    0x8(%rbx),%edx
   140001a25:	83 fa 01             	cmp    $0x1,%edx
   140001a28:	0f 85 92 02 00 00    	jne    140001cc0 <_pei386_runtime_relocator+0x350>
   140001a2e:	48 83 c3 0c          	add    $0xc,%rbx
   140001a32:	4c 39 eb             	cmp    %r13,%rbx
   140001a35:	0f 83 56 ff ff ff    	jae    140001991 <_pei386_runtime_relocator+0x21>
   140001a3b:	4c 8b 35 5e 29 00 00 	mov    0x295e(%rip),%r14        # 1400043a0 <.refptr.__ImageBase>
   140001a42:	41 bf ff ff ff ff    	mov    $0xffffffff,%r15d
   140001a48:	eb 65                	jmp    140001aaf <_pei386_runtime_relocator+0x13f>
   140001a4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001a50:	83 f9 08             	cmp    $0x8,%ecx
   140001a53:	0f 84 d7 00 00 00    	je     140001b30 <_pei386_runtime_relocator+0x1c0>
   140001a59:	83 f9 10             	cmp    $0x10,%ecx
   140001a5c:	0f 85 50 02 00 00    	jne    140001cb2 <_pei386_runtime_relocator+0x342>
   140001a62:	0f b7 37             	movzwl (%rdi),%esi
   140001a65:	81 e2 c0 00 00 00    	and    $0xc0,%edx
   140001a6b:	66 85 f6             	test   %si,%si
   140001a6e:	0f 89 cc 01 00 00    	jns    140001c40 <_pei386_runtime_relocator+0x2d0>
   140001a74:	48 81 ce 00 00 ff ff 	or     $0xffffffffffff0000,%rsi
   140001a7b:	48 29 c6             	sub    %rax,%rsi
   140001a7e:	4c 01 ce             	add    %r9,%rsi
   140001a81:	85 d2                	test   %edx,%edx
   140001a83:	75 12                	jne    140001a97 <_pei386_runtime_relocator+0x127>
   140001a85:	48 81 fe 00 80 ff ff 	cmp    $0xffffffffffff8000,%rsi
   140001a8c:	7c 65                	jl     140001af3 <_pei386_runtime_relocator+0x183>
   140001a8e:	48 81 fe ff ff 00 00 	cmp    $0xffff,%rsi
   140001a95:	7f 5c                	jg     140001af3 <_pei386_runtime_relocator+0x183>
   140001a97:	48 89 f9             	mov    %rdi,%rcx
   140001a9a:	e8 61 fd ff ff       	call   140001800 <mark_section_writable>
   140001a9f:	66 89 37             	mov    %si,(%rdi)
   140001aa2:	48 83 c3 0c          	add    $0xc,%rbx
   140001aa6:	4c 39 eb             	cmp    %r13,%rbx
   140001aa9:	0f 83 d1 00 00 00    	jae    140001b80 <_pei386_runtime_relocator+0x210>
   140001aaf:	8b 03                	mov    (%rbx),%eax
   140001ab1:	8b 53 08             	mov    0x8(%rbx),%edx
   140001ab4:	8b 7b 04             	mov    0x4(%rbx),%edi
   140001ab7:	4c 01 f0             	add    %r14,%rax
   140001aba:	0f b6 ca             	movzbl %dl,%ecx
   140001abd:	4c 8b 08             	mov    (%rax),%r9
   140001ac0:	4c 01 f7             	add    %r14,%rdi
   140001ac3:	83 f9 20             	cmp    $0x20,%ecx
   140001ac6:	0f 84 0c 01 00 00    	je     140001bd8 <_pei386_runtime_relocator+0x268>
   140001acc:	76 82                	jbe    140001a50 <_pei386_runtime_relocator+0xe0>
   140001ace:	83 f9 40             	cmp    $0x40,%ecx
   140001ad1:	0f 85 db 01 00 00    	jne    140001cb2 <_pei386_runtime_relocator+0x342>
   140001ad7:	48 8b 37             	mov    (%rdi),%rsi
   140001ada:	89 d1                	mov    %edx,%ecx
   140001adc:	48 29 c6             	sub    %rax,%rsi
   140001adf:	4c 01 ce             	add    %r9,%rsi
   140001ae2:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140001ae8:	0f 85 42 01 00 00    	jne    140001c30 <_pei386_runtime_relocator+0x2c0>
   140001aee:	48 85 f6             	test   %rsi,%rsi
   140001af1:	78 af                	js     140001aa2 <_pei386_runtime_relocator+0x132>
   140001af3:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   140001af8:	89 ca                	mov    %ecx,%edx
   140001afa:	49 89 f8             	mov    %rdi,%r8
   140001afd:	48 8d 0d c4 27 00 00 	lea    0x27c4(%rip),%rcx        # 1400042c8 <.rdata+0x108>
   140001b04:	e8 87 fc ff ff       	call   140001790 <__report_error>
   140001b09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001b10:	85 d2                	test   %edx,%edx
   140001b12:	0f 85 68 01 00 00    	jne    140001c80 <_pei386_runtime_relocator+0x310>
   140001b18:	8b 43 04             	mov    0x4(%rbx),%eax
   140001b1b:	89 c2                	mov    %eax,%edx
   140001b1d:	0b 53 08             	or     0x8(%rbx),%edx
   140001b20:	0f 85 f4 fe ff ff    	jne    140001a1a <_pei386_runtime_relocator+0xaa>
   140001b26:	48 83 c3 0c          	add    $0xc,%rbx
   140001b2a:	e9 de fe ff ff       	jmp    140001a0d <_pei386_runtime_relocator+0x9d>
   140001b2f:	90                   	nop
   140001b30:	0f b6 37             	movzbl (%rdi),%esi
   140001b33:	81 e2 c0 00 00 00    	and    $0xc0,%edx
   140001b39:	40 84 f6             	test   %sil,%sil
   140001b3c:	0f 89 26 01 00 00    	jns    140001c68 <_pei386_runtime_relocator+0x2f8>
   140001b42:	48 81 ce 00 ff ff ff 	or     $0xffffffffffffff00,%rsi
   140001b49:	48 29 c6             	sub    %rax,%rsi
   140001b4c:	4c 01 ce             	add    %r9,%rsi
   140001b4f:	85 d2                	test   %edx,%edx
   140001b51:	75 0f                	jne    140001b62 <_pei386_runtime_relocator+0x1f2>
   140001b53:	48 81 fe ff 00 00 00 	cmp    $0xff,%rsi
   140001b5a:	7f 97                	jg     140001af3 <_pei386_runtime_relocator+0x183>
   140001b5c:	48 83 fe 80          	cmp    $0xffffffffffffff80,%rsi
   140001b60:	7c 91                	jl     140001af3 <_pei386_runtime_relocator+0x183>
   140001b62:	48 89 f9             	mov    %rdi,%rcx
   140001b65:	48 83 c3 0c          	add    $0xc,%rbx
   140001b69:	e8 92 fc ff ff       	call   140001800 <mark_section_writable>
   140001b6e:	40 88 37             	mov    %sil,(%rdi)
   140001b71:	4c 39 eb             	cmp    %r13,%rbx
   140001b74:	0f 82 35 ff ff ff    	jb     140001aaf <_pei386_runtime_relocator+0x13f>
   140001b7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001b80:	8b 15 0e 55 00 00    	mov    0x550e(%rip),%edx        # 140007094 <maxSections>
   140001b86:	85 d2                	test   %edx,%edx
   140001b88:	0f 8e 03 fe ff ff    	jle    140001991 <_pei386_runtime_relocator+0x21>
   140001b8e:	48 8b 35 b3 67 00 00 	mov    0x67b3(%rip),%rsi        # 140008348 <__imp_VirtualProtect>
   140001b95:	31 db                	xor    %ebx,%ebx
   140001b97:	48 8d 7d fc          	lea    -0x4(%rbp),%rdi
   140001b9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001ba0:	48 8b 05 f1 54 00 00 	mov    0x54f1(%rip),%rax        # 140007098 <the_secs>
   140001ba7:	48 01 d8             	add    %rbx,%rax
   140001baa:	44 8b 00             	mov    (%rax),%r8d
   140001bad:	45 85 c0             	test   %r8d,%r8d
   140001bb0:	74 0d                	je     140001bbf <_pei386_runtime_relocator+0x24f>
   140001bb2:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140001bb6:	48 8b 48 08          	mov    0x8(%rax),%rcx
   140001bba:	49 89 f9             	mov    %rdi,%r9
   140001bbd:	ff d6                	call   *%rsi
   140001bbf:	41 83 c4 01          	add    $0x1,%r12d
   140001bc3:	48 83 c3 28          	add    $0x28,%rbx
   140001bc7:	44 3b 25 c6 54 00 00 	cmp    0x54c6(%rip),%r12d        # 140007094 <maxSections>
   140001bce:	7c d0                	jl     140001ba0 <_pei386_runtime_relocator+0x230>
   140001bd0:	e9 bc fd ff ff       	jmp    140001991 <_pei386_runtime_relocator+0x21>
   140001bd5:	0f 1f 00             	nopl   (%rax)
   140001bd8:	8b 37                	mov    (%rdi),%esi
   140001bda:	81 e2 c0 00 00 00    	and    $0xc0,%edx
   140001be0:	85 f6                	test   %esi,%esi
   140001be2:	79 74                	jns    140001c58 <_pei386_runtime_relocator+0x2e8>
   140001be4:	49 bb 00 00 00 00 ff 	movabs $0xffffffff00000000,%r11
   140001beb:	ff ff ff 
   140001bee:	4c 09 de             	or     %r11,%rsi
   140001bf1:	48 29 c6             	sub    %rax,%rsi
   140001bf4:	4c 01 ce             	add    %r9,%rsi
   140001bf7:	85 d2                	test   %edx,%edx
   140001bf9:	75 1c                	jne    140001c17 <_pei386_runtime_relocator+0x2a7>
   140001bfb:	4c 39 fe             	cmp    %r15,%rsi
   140001bfe:	0f 8f ef fe ff ff    	jg     140001af3 <_pei386_runtime_relocator+0x183>
   140001c04:	48 b8 ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%rax
   140001c0b:	ff ff ff 
   140001c0e:	48 39 c6             	cmp    %rax,%rsi
   140001c11:	0f 8e dc fe ff ff    	jle    140001af3 <_pei386_runtime_relocator+0x183>
   140001c17:	48 89 f9             	mov    %rdi,%rcx
   140001c1a:	e8 e1 fb ff ff       	call   140001800 <mark_section_writable>
   140001c1f:	89 37                	mov    %esi,(%rdi)
   140001c21:	e9 7c fe ff ff       	jmp    140001aa2 <_pei386_runtime_relocator+0x132>
   140001c26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001c2d:	00 00 00 
   140001c30:	48 89 f9             	mov    %rdi,%rcx
   140001c33:	e8 c8 fb ff ff       	call   140001800 <mark_section_writable>
   140001c38:	48 89 37             	mov    %rsi,(%rdi)
   140001c3b:	e9 62 fe ff ff       	jmp    140001aa2 <_pei386_runtime_relocator+0x132>
   140001c40:	48 29 c6             	sub    %rax,%rsi
   140001c43:	4c 01 ce             	add    %r9,%rsi
   140001c46:	85 d2                	test   %edx,%edx
   140001c48:	0f 84 37 fe ff ff    	je     140001a85 <_pei386_runtime_relocator+0x115>
   140001c4e:	e9 44 fe ff ff       	jmp    140001a97 <_pei386_runtime_relocator+0x127>
   140001c53:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001c58:	48 29 c6             	sub    %rax,%rsi
   140001c5b:	4c 01 ce             	add    %r9,%rsi
   140001c5e:	85 d2                	test   %edx,%edx
   140001c60:	74 99                	je     140001bfb <_pei386_runtime_relocator+0x28b>
   140001c62:	eb b3                	jmp    140001c17 <_pei386_runtime_relocator+0x2a7>
   140001c64:	0f 1f 40 00          	nopl   0x0(%rax)
   140001c68:	48 29 c6             	sub    %rax,%rsi
   140001c6b:	4c 01 ce             	add    %r9,%rsi
   140001c6e:	85 d2                	test   %edx,%edx
   140001c70:	0f 84 dd fe ff ff    	je     140001b53 <_pei386_runtime_relocator+0x1e3>
   140001c76:	e9 e7 fe ff ff       	jmp    140001b62 <_pei386_runtime_relocator+0x1f2>
   140001c7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001c80:	4c 39 eb             	cmp    %r13,%rbx
   140001c83:	0f 83 08 fd ff ff    	jae    140001991 <_pei386_runtime_relocator+0x21>
   140001c89:	4c 8b 35 10 27 00 00 	mov    0x2710(%rip),%r14        # 1400043a0 <.refptr.__ImageBase>
   140001c90:	8b 73 04             	mov    0x4(%rbx),%esi
   140001c93:	8b 3b                	mov    (%rbx),%edi
   140001c95:	48 83 c3 08          	add    $0x8,%rbx
   140001c99:	4c 01 f6             	add    %r14,%rsi
   140001c9c:	03 3e                	add    (%rsi),%edi
   140001c9e:	48 89 f1             	mov    %rsi,%rcx
   140001ca1:	e8 5a fb ff ff       	call   140001800 <mark_section_writable>
   140001ca6:	89 3e                	mov    %edi,(%rsi)
   140001ca8:	4c 39 eb             	cmp    %r13,%rbx
   140001cab:	72 e3                	jb     140001c90 <_pei386_runtime_relocator+0x320>
   140001cad:	e9 ce fe ff ff       	jmp    140001b80 <_pei386_runtime_relocator+0x210>
   140001cb2:	89 ca                	mov    %ecx,%edx
   140001cb4:	48 8d 0d dd 25 00 00 	lea    0x25dd(%rip),%rcx        # 140004298 <.rdata+0xd8>
   140001cbb:	e8 d0 fa ff ff       	call   140001790 <__report_error>
   140001cc0:	48 8d 0d 99 25 00 00 	lea    0x2599(%rip),%rcx        # 140004260 <.rdata+0xa0>
   140001cc7:	e8 c4 fa ff ff       	call   140001790 <__report_error>
   140001ccc:	90                   	nop
   140001ccd:	90                   	nop
   140001cce:	90                   	nop
   140001ccf:	90                   	nop

0000000140001cd0 <__mingw_raise_matherr>:
   140001cd0:	48 83 ec 58          	sub    $0x58,%rsp
   140001cd4:	48 8b 05 c5 53 00 00 	mov    0x53c5(%rip),%rax        # 1400070a0 <stUserMathErr>
   140001cdb:	66 0f 14 d3          	unpcklpd %xmm3,%xmm2
   140001cdf:	48 85 c0             	test   %rax,%rax
   140001ce2:	74 25                	je     140001d09 <__mingw_raise_matherr+0x39>
   140001ce4:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140001ceb:	00 00 
   140001ced:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140001cf1:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140001cf6:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140001cfb:	0f 11 54 24 30       	movups %xmm2,0x30(%rsp)
   140001d00:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140001d06:	ff d0                	call   *%rax
   140001d08:	90                   	nop
   140001d09:	48 83 c4 58          	add    $0x58,%rsp
   140001d0d:	c3                   	ret
   140001d0e:	66 90                	xchg   %ax,%ax

0000000140001d10 <__mingw_setusermatherr>:
   140001d10:	48 89 0d 89 53 00 00 	mov    %rcx,0x5389(%rip)        # 1400070a0 <stUserMathErr>
   140001d17:	e9 f4 0b 00 00       	jmp    140002910 <__setusermatherr>
   140001d1c:	90                   	nop
   140001d1d:	90                   	nop
   140001d1e:	90                   	nop
   140001d1f:	90                   	nop

0000000140001d20 <_gnu_exception_handler>:
   140001d20:	53                   	push   %rbx
   140001d21:	48 83 ec 20          	sub    $0x20,%rsp
   140001d25:	48 8b 11             	mov    (%rcx),%rdx
   140001d28:	8b 02                	mov    (%rdx),%eax
   140001d2a:	48 89 cb             	mov    %rcx,%rbx
   140001d2d:	89 c1                	mov    %eax,%ecx
   140001d2f:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140001d35:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   140001d3b:	0f 84 bf 00 00 00    	je     140001e00 <_gnu_exception_handler+0xe0>
   140001d41:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140001d46:	77 47                	ja     140001d8f <_gnu_exception_handler+0x6f>
   140001d48:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140001d4d:	76 61                	jbe    140001db0 <_gnu_exception_handler+0x90>
   140001d4f:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140001d54:	83 f8 09             	cmp    $0x9,%eax
   140001d57:	0f 87 93 00 00 00    	ja     140001df0 <_gnu_exception_handler+0xd0>
   140001d5d:	48 8d 15 bc 25 00 00 	lea    0x25bc(%rip),%rdx        # 140004320 <.rdata>
   140001d64:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140001d68:	48 01 d0             	add    %rdx,%rax
   140001d6b:	ff e0                	jmp    *%rax
   140001d6d:	0f 1f 00             	nopl   (%rax)
   140001d70:	31 d2                	xor    %edx,%edx
   140001d72:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001d77:	e8 74 0b 00 00       	call   1400028f0 <signal>
   140001d7c:	48 83 f8 01          	cmp    $0x1,%rax
   140001d80:	0f 84 3e 01 00 00    	je     140001ec4 <_gnu_exception_handler+0x1a4>
   140001d86:	48 85 c0             	test   %rax,%rax
   140001d89:	0f 85 01 01 00 00    	jne    140001e90 <_gnu_exception_handler+0x170>
   140001d8f:	48 8b 05 2a 53 00 00 	mov    0x532a(%rip),%rax        # 1400070c0 <__mingw_oldexcpt_handler>
   140001d96:	48 85 c0             	test   %rax,%rax
   140001d99:	74 75                	je     140001e10 <_gnu_exception_handler+0xf0>
   140001d9b:	48 89 d9             	mov    %rbx,%rcx
   140001d9e:	48 83 c4 20          	add    $0x20,%rsp
   140001da2:	5b                   	pop    %rbx
   140001da3:	48 ff e0             	rex.W jmp *%rax
   140001da6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001dad:	00 00 00 
   140001db0:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140001db5:	0f 84 a5 00 00 00    	je     140001e60 <_gnu_exception_handler+0x140>
   140001dbb:	76 63                	jbe    140001e20 <_gnu_exception_handler+0x100>
   140001dbd:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140001dc2:	74 2c                	je     140001df0 <_gnu_exception_handler+0xd0>
   140001dc4:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140001dc9:	75 c4                	jne    140001d8f <_gnu_exception_handler+0x6f>
   140001dcb:	31 d2                	xor    %edx,%edx
   140001dcd:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001dd2:	e8 19 0b 00 00       	call   1400028f0 <signal>
   140001dd7:	48 83 f8 01          	cmp    $0x1,%rax
   140001ddb:	0f 84 cf 00 00 00    	je     140001eb0 <_gnu_exception_handler+0x190>
   140001de1:	48 85 c0             	test   %rax,%rax
   140001de4:	74 a9                	je     140001d8f <_gnu_exception_handler+0x6f>
   140001de6:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001deb:	ff d0                	call   *%rax
   140001ded:	0f 1f 00             	nopl   (%rax)
   140001df0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001df5:	eb 1b                	jmp    140001e12 <_gnu_exception_handler+0xf2>
   140001df7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001dfe:	00 00 
   140001e00:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140001e04:	0f 85 37 ff ff ff    	jne    140001d41 <_gnu_exception_handler+0x21>
   140001e0a:	eb e4                	jmp    140001df0 <_gnu_exception_handler+0xd0>
   140001e0c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001e10:	31 c0                	xor    %eax,%eax
   140001e12:	48 83 c4 20          	add    $0x20,%rsp
   140001e16:	5b                   	pop    %rbx
   140001e17:	c3                   	ret
   140001e18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140001e1f:	00 
   140001e20:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140001e25:	0f 85 64 ff ff ff    	jne    140001d8f <_gnu_exception_handler+0x6f>
   140001e2b:	eb c3                	jmp    140001df0 <_gnu_exception_handler+0xd0>
   140001e2d:	0f 1f 00             	nopl   (%rax)
   140001e30:	31 d2                	xor    %edx,%edx
   140001e32:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e37:	e8 b4 0a 00 00       	call   1400028f0 <signal>
   140001e3c:	48 83 f8 01          	cmp    $0x1,%rax
   140001e40:	0f 85 40 ff ff ff    	jne    140001d86 <_gnu_exception_handler+0x66>
   140001e46:	ba 01 00 00 00       	mov    $0x1,%edx
   140001e4b:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e50:	e8 9b 0a 00 00       	call   1400028f0 <signal>
   140001e55:	eb 99                	jmp    140001df0 <_gnu_exception_handler+0xd0>
   140001e57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001e5e:	00 00 
   140001e60:	31 d2                	xor    %edx,%edx
   140001e62:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001e67:	e8 84 0a 00 00       	call   1400028f0 <signal>
   140001e6c:	48 83 f8 01          	cmp    $0x1,%rax
   140001e70:	74 2a                	je     140001e9c <_gnu_exception_handler+0x17c>
   140001e72:	48 85 c0             	test   %rax,%rax
   140001e75:	0f 84 14 ff ff ff    	je     140001d8f <_gnu_exception_handler+0x6f>
   140001e7b:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001e80:	ff d0                	call   *%rax
   140001e82:	e9 69 ff ff ff       	jmp    140001df0 <_gnu_exception_handler+0xd0>
   140001e87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001e8e:	00 00 
   140001e90:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e95:	ff d0                	call   *%rax
   140001e97:	e9 54 ff ff ff       	jmp    140001df0 <_gnu_exception_handler+0xd0>
   140001e9c:	ba 01 00 00 00       	mov    $0x1,%edx
   140001ea1:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001ea6:	e8 45 0a 00 00       	call   1400028f0 <signal>
   140001eab:	e9 40 ff ff ff       	jmp    140001df0 <_gnu_exception_handler+0xd0>
   140001eb0:	ba 01 00 00 00       	mov    $0x1,%edx
   140001eb5:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001eba:	e8 31 0a 00 00       	call   1400028f0 <signal>
   140001ebf:	e9 2c ff ff ff       	jmp    140001df0 <_gnu_exception_handler+0xd0>
   140001ec4:	ba 01 00 00 00       	mov    $0x1,%edx
   140001ec9:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001ece:	e8 1d 0a 00 00       	call   1400028f0 <signal>
   140001ed3:	e8 a8 f8 ff ff       	call   140001780 <_fpreset>
   140001ed8:	e9 13 ff ff ff       	jmp    140001df0 <_gnu_exception_handler+0xd0>
   140001edd:	90                   	nop
   140001ede:	90                   	nop
   140001edf:	90                   	nop

0000000140001ee0 <__mingwthr_run_key_dtors.part.0>:
   140001ee0:	41 54                	push   %r12
   140001ee2:	55                   	push   %rbp
   140001ee3:	57                   	push   %rdi
   140001ee4:	56                   	push   %rsi
   140001ee5:	53                   	push   %rbx
   140001ee6:	48 83 ec 20          	sub    $0x20,%rsp
   140001eea:	4c 8d 25 0f 52 00 00 	lea    0x520f(%rip),%r12        # 140007100 <__mingwthr_cs>
   140001ef1:	4c 89 e1             	mov    %r12,%rcx
   140001ef4:	ff 15 16 64 00 00    	call   *0x6416(%rip)        # 140008310 <__imp_EnterCriticalSection>
   140001efa:	48 8b 1d df 51 00 00 	mov    0x51df(%rip),%rbx        # 1400070e0 <key_dtor_list>
   140001f01:	48 85 db             	test   %rbx,%rbx
   140001f04:	74 36                	je     140001f3c <__mingwthr_run_key_dtors.part.0+0x5c>
   140001f06:	48 8b 2d 33 64 00 00 	mov    0x6433(%rip),%rbp        # 140008340 <__imp_TlsGetValue>
   140001f0d:	48 8b 3d 04 64 00 00 	mov    0x6404(%rip),%rdi        # 140008318 <__imp_GetLastError>
   140001f14:	0f 1f 40 00          	nopl   0x0(%rax)
   140001f18:	8b 0b                	mov    (%rbx),%ecx
   140001f1a:	ff d5                	call   *%rbp
   140001f1c:	48 89 c6             	mov    %rax,%rsi
   140001f1f:	ff d7                	call   *%rdi
   140001f21:	48 85 f6             	test   %rsi,%rsi
   140001f24:	74 0d                	je     140001f33 <__mingwthr_run_key_dtors.part.0+0x53>
   140001f26:	85 c0                	test   %eax,%eax
   140001f28:	75 09                	jne    140001f33 <__mingwthr_run_key_dtors.part.0+0x53>
   140001f2a:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140001f2e:	48 89 f1             	mov    %rsi,%rcx
   140001f31:	ff d0                	call   *%rax
   140001f33:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140001f37:	48 85 db             	test   %rbx,%rbx
   140001f3a:	75 dc                	jne    140001f18 <__mingwthr_run_key_dtors.part.0+0x38>
   140001f3c:	4c 89 e1             	mov    %r12,%rcx
   140001f3f:	48 83 c4 20          	add    $0x20,%rsp
   140001f43:	5b                   	pop    %rbx
   140001f44:	5e                   	pop    %rsi
   140001f45:	5f                   	pop    %rdi
   140001f46:	5d                   	pop    %rbp
   140001f47:	41 5c                	pop    %r12
   140001f49:	48 ff 25 d8 63 00 00 	rex.W jmp *0x63d8(%rip)        # 140008328 <__imp_LeaveCriticalSection>

0000000140001f50 <___w64_mingwthr_add_key_dtor>:
   140001f50:	57                   	push   %rdi
   140001f51:	56                   	push   %rsi
   140001f52:	53                   	push   %rbx
   140001f53:	48 83 ec 20          	sub    $0x20,%rsp
   140001f57:	8b 05 8b 51 00 00    	mov    0x518b(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140001f5d:	89 cf                	mov    %ecx,%edi
   140001f5f:	48 89 d6             	mov    %rdx,%rsi
   140001f62:	85 c0                	test   %eax,%eax
   140001f64:	75 0a                	jne    140001f70 <___w64_mingwthr_add_key_dtor+0x20>
   140001f66:	31 c0                	xor    %eax,%eax
   140001f68:	48 83 c4 20          	add    $0x20,%rsp
   140001f6c:	5b                   	pop    %rbx
   140001f6d:	5e                   	pop    %rsi
   140001f6e:	5f                   	pop    %rdi
   140001f6f:	c3                   	ret
   140001f70:	ba 18 00 00 00       	mov    $0x18,%edx
   140001f75:	b9 01 00 00 00       	mov    $0x1,%ecx
   140001f7a:	e8 a9 09 00 00       	call   140002928 <calloc>
   140001f7f:	48 89 c3             	mov    %rax,%rbx
   140001f82:	48 85 c0             	test   %rax,%rax
   140001f85:	74 33                	je     140001fba <___w64_mingwthr_add_key_dtor+0x6a>
   140001f87:	48 89 70 08          	mov    %rsi,0x8(%rax)
   140001f8b:	48 8d 35 6e 51 00 00 	lea    0x516e(%rip),%rsi        # 140007100 <__mingwthr_cs>
   140001f92:	89 38                	mov    %edi,(%rax)
   140001f94:	48 89 f1             	mov    %rsi,%rcx
   140001f97:	ff 15 73 63 00 00    	call   *0x6373(%rip)        # 140008310 <__imp_EnterCriticalSection>
   140001f9d:	48 8b 05 3c 51 00 00 	mov    0x513c(%rip),%rax        # 1400070e0 <key_dtor_list>
   140001fa4:	48 89 f1             	mov    %rsi,%rcx
   140001fa7:	48 89 1d 32 51 00 00 	mov    %rbx,0x5132(%rip)        # 1400070e0 <key_dtor_list>
   140001fae:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140001fb2:	ff 15 70 63 00 00    	call   *0x6370(%rip)        # 140008328 <__imp_LeaveCriticalSection>
   140001fb8:	eb ac                	jmp    140001f66 <___w64_mingwthr_add_key_dtor+0x16>
   140001fba:	83 c8 ff             	or     $0xffffffff,%eax
   140001fbd:	eb a9                	jmp    140001f68 <___w64_mingwthr_add_key_dtor+0x18>
   140001fbf:	90                   	nop

0000000140001fc0 <___w64_mingwthr_remove_key_dtor>:
   140001fc0:	56                   	push   %rsi
   140001fc1:	53                   	push   %rbx
   140001fc2:	48 83 ec 28          	sub    $0x28,%rsp
   140001fc6:	8b 05 1c 51 00 00    	mov    0x511c(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140001fcc:	89 cb                	mov    %ecx,%ebx
   140001fce:	85 c0                	test   %eax,%eax
   140001fd0:	75 0e                	jne    140001fe0 <___w64_mingwthr_remove_key_dtor+0x20>
   140001fd2:	31 c0                	xor    %eax,%eax
   140001fd4:	48 83 c4 28          	add    $0x28,%rsp
   140001fd8:	5b                   	pop    %rbx
   140001fd9:	5e                   	pop    %rsi
   140001fda:	c3                   	ret
   140001fdb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001fe0:	48 8d 35 19 51 00 00 	lea    0x5119(%rip),%rsi        # 140007100 <__mingwthr_cs>
   140001fe7:	48 89 f1             	mov    %rsi,%rcx
   140001fea:	ff 15 20 63 00 00    	call   *0x6320(%rip)        # 140008310 <__imp_EnterCriticalSection>
   140001ff0:	48 8b 0d e9 50 00 00 	mov    0x50e9(%rip),%rcx        # 1400070e0 <key_dtor_list>
   140001ff7:	48 85 c9             	test   %rcx,%rcx
   140001ffa:	74 27                	je     140002023 <___w64_mingwthr_remove_key_dtor+0x63>
   140001ffc:	31 d2                	xor    %edx,%edx
   140001ffe:	eb 0b                	jmp    14000200b <___w64_mingwthr_remove_key_dtor+0x4b>
   140002000:	48 89 ca             	mov    %rcx,%rdx
   140002003:	48 85 c0             	test   %rax,%rax
   140002006:	74 1b                	je     140002023 <___w64_mingwthr_remove_key_dtor+0x63>
   140002008:	48 89 c1             	mov    %rax,%rcx
   14000200b:	8b 01                	mov    (%rcx),%eax
   14000200d:	39 d8                	cmp    %ebx,%eax
   14000200f:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140002013:	75 eb                	jne    140002000 <___w64_mingwthr_remove_key_dtor+0x40>
   140002015:	48 85 d2             	test   %rdx,%rdx
   140002018:	74 1e                	je     140002038 <___w64_mingwthr_remove_key_dtor+0x78>
   14000201a:	48 89 42 10          	mov    %rax,0x10(%rdx)
   14000201e:	e8 0d 09 00 00       	call   140002930 <free>
   140002023:	48 89 f1             	mov    %rsi,%rcx
   140002026:	ff 15 fc 62 00 00    	call   *0x62fc(%rip)        # 140008328 <__imp_LeaveCriticalSection>
   14000202c:	31 c0                	xor    %eax,%eax
   14000202e:	48 83 c4 28          	add    $0x28,%rsp
   140002032:	5b                   	pop    %rbx
   140002033:	5e                   	pop    %rsi
   140002034:	c3                   	ret
   140002035:	0f 1f 00             	nopl   (%rax)
   140002038:	48 89 05 a1 50 00 00 	mov    %rax,0x50a1(%rip)        # 1400070e0 <key_dtor_list>
   14000203f:	eb dd                	jmp    14000201e <___w64_mingwthr_remove_key_dtor+0x5e>
   140002041:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002048:	00 00 00 00 
   14000204c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002050 <__mingw_TLScallback>:
   140002050:	53                   	push   %rbx
   140002051:	48 83 ec 20          	sub    $0x20,%rsp
   140002055:	83 fa 02             	cmp    $0x2,%edx
   140002058:	0f 84 b2 00 00 00    	je     140002110 <__mingw_TLScallback+0xc0>
   14000205e:	77 30                	ja     140002090 <__mingw_TLScallback+0x40>
   140002060:	85 d2                	test   %edx,%edx
   140002062:	74 4c                	je     1400020b0 <__mingw_TLScallback+0x60>
   140002064:	8b 05 7e 50 00 00    	mov    0x507e(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   14000206a:	85 c0                	test   %eax,%eax
   14000206c:	0f 84 be 00 00 00    	je     140002130 <__mingw_TLScallback+0xe0>
   140002072:	c7 05 6c 50 00 00 01 	movl   $0x1,0x506c(%rip)        # 1400070e8 <__mingwthr_cs_init>
   140002079:	00 00 00 
   14000207c:	b8 01 00 00 00       	mov    $0x1,%eax
   140002081:	48 83 c4 20          	add    $0x20,%rsp
   140002085:	5b                   	pop    %rbx
   140002086:	c3                   	ret
   140002087:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000208e:	00 00 
   140002090:	83 fa 03             	cmp    $0x3,%edx
   140002093:	75 e7                	jne    14000207c <__mingw_TLScallback+0x2c>
   140002095:	8b 05 4d 50 00 00    	mov    0x504d(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   14000209b:	85 c0                	test   %eax,%eax
   14000209d:	74 dd                	je     14000207c <__mingw_TLScallback+0x2c>
   14000209f:	e8 3c fe ff ff       	call   140001ee0 <__mingwthr_run_key_dtors.part.0>
   1400020a4:	eb d6                	jmp    14000207c <__mingw_TLScallback+0x2c>
   1400020a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400020ad:	00 00 00 
   1400020b0:	8b 05 32 50 00 00    	mov    0x5032(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   1400020b6:	85 c0                	test   %eax,%eax
   1400020b8:	75 66                	jne    140002120 <__mingw_TLScallback+0xd0>
   1400020ba:	8b 05 28 50 00 00    	mov    0x5028(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   1400020c0:	83 f8 01             	cmp    $0x1,%eax
   1400020c3:	75 b7                	jne    14000207c <__mingw_TLScallback+0x2c>
   1400020c5:	48 8b 1d 14 50 00 00 	mov    0x5014(%rip),%rbx        # 1400070e0 <key_dtor_list>
   1400020cc:	48 85 db             	test   %rbx,%rbx
   1400020cf:	74 18                	je     1400020e9 <__mingw_TLScallback+0x99>
   1400020d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400020d8:	48 89 d9             	mov    %rbx,%rcx
   1400020db:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   1400020df:	e8 4c 08 00 00       	call   140002930 <free>
   1400020e4:	48 85 db             	test   %rbx,%rbx
   1400020e7:	75 ef                	jne    1400020d8 <__mingw_TLScallback+0x88>
   1400020e9:	48 8d 0d 10 50 00 00 	lea    0x5010(%rip),%rcx        # 140007100 <__mingwthr_cs>
   1400020f0:	48 c7 05 e5 4f 00 00 	movq   $0x0,0x4fe5(%rip)        # 1400070e0 <key_dtor_list>
   1400020f7:	00 00 00 00 
   1400020fb:	c7 05 e3 4f 00 00 00 	movl   $0x0,0x4fe3(%rip)        # 1400070e8 <__mingwthr_cs_init>
   140002102:	00 00 00 
   140002105:	ff 15 fd 61 00 00    	call   *0x61fd(%rip)        # 140008308 <__imp_DeleteCriticalSection>
   14000210b:	e9 6c ff ff ff       	jmp    14000207c <__mingw_TLScallback+0x2c>
   140002110:	e8 6b f6 ff ff       	call   140001780 <_fpreset>
   140002115:	b8 01 00 00 00       	mov    $0x1,%eax
   14000211a:	48 83 c4 20          	add    $0x20,%rsp
   14000211e:	5b                   	pop    %rbx
   14000211f:	c3                   	ret
   140002120:	e8 bb fd ff ff       	call   140001ee0 <__mingwthr_run_key_dtors.part.0>
   140002125:	eb 93                	jmp    1400020ba <__mingw_TLScallback+0x6a>
   140002127:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000212e:	00 00 
   140002130:	48 8d 0d c9 4f 00 00 	lea    0x4fc9(%rip),%rcx        # 140007100 <__mingwthr_cs>
   140002137:	ff 15 e3 61 00 00    	call   *0x61e3(%rip)        # 140008320 <__imp_InitializeCriticalSection>
   14000213d:	e9 30 ff ff ff       	jmp    140002072 <__mingw_TLScallback+0x22>
   140002142:	90                   	nop
   140002143:	90                   	nop
   140002144:	90                   	nop
   140002145:	90                   	nop
   140002146:	90                   	nop
   140002147:	90                   	nop
   140002148:	90                   	nop
   140002149:	90                   	nop
   14000214a:	90                   	nop
   14000214b:	90                   	nop
   14000214c:	90                   	nop
   14000214d:	90                   	nop
   14000214e:	90                   	nop
   14000214f:	90                   	nop

0000000140002150 <_ValidateImageBase>:
   140002150:	31 c0                	xor    %eax,%eax
   140002152:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002157:	75 0f                	jne    140002168 <_ValidateImageBase+0x18>
   140002159:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   14000215d:	48 01 d1             	add    %rdx,%rcx
   140002160:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140002166:	74 08                	je     140002170 <_ValidateImageBase+0x20>
   140002168:	c3                   	ret
   140002169:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002170:	31 c0                	xor    %eax,%eax
   140002172:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140002178:	0f 94 c0             	sete   %al
   14000217b:	c3                   	ret
   14000217c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002180 <_FindPESection>:
   140002180:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002184:	48 01 c1             	add    %rax,%rcx
   140002187:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   14000218b:	44 0f b7 41 06       	movzwl 0x6(%rcx),%r8d
   140002190:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   140002195:	66 45 85 c0          	test   %r8w,%r8w
   140002199:	74 32                	je     1400021cd <_FindPESection+0x4d>
   14000219b:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
   14000219f:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   1400021a3:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   1400021a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400021af:	00 
   1400021b0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   1400021b4:	4c 89 c1             	mov    %r8,%rcx
   1400021b7:	4c 39 c2             	cmp    %r8,%rdx
   1400021ba:	72 08                	jb     1400021c4 <_FindPESection+0x44>
   1400021bc:	03 48 08             	add    0x8(%rax),%ecx
   1400021bf:	48 39 ca             	cmp    %rcx,%rdx
   1400021c2:	72 0b                	jb     1400021cf <_FindPESection+0x4f>
   1400021c4:	48 83 c0 28          	add    $0x28,%rax
   1400021c8:	4c 39 c8             	cmp    %r9,%rax
   1400021cb:	75 e3                	jne    1400021b0 <_FindPESection+0x30>
   1400021cd:	31 c0                	xor    %eax,%eax
   1400021cf:	c3                   	ret

00000001400021d0 <_FindPESectionByName>:
   1400021d0:	57                   	push   %rdi
   1400021d1:	56                   	push   %rsi
   1400021d2:	53                   	push   %rbx
   1400021d3:	48 83 ec 20          	sub    $0x20,%rsp
   1400021d7:	48 89 ce             	mov    %rcx,%rsi
   1400021da:	e8 51 06 00 00       	call   140002830 <strlen>
   1400021df:	48 83 f8 08          	cmp    $0x8,%rax
   1400021e3:	77 7b                	ja     140002260 <_FindPESectionByName+0x90>
   1400021e5:	48 8b 15 b4 21 00 00 	mov    0x21b4(%rip),%rdx        # 1400043a0 <.refptr.__ImageBase>
   1400021ec:	31 db                	xor    %ebx,%ebx
   1400021ee:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400021f3:	75 59                	jne    14000224e <_FindPESectionByName+0x7e>
   1400021f5:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   1400021f9:	48 01 d0             	add    %rdx,%rax
   1400021fc:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140002202:	75 4a                	jne    14000224e <_FindPESectionByName+0x7e>
   140002204:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000220a:	75 42                	jne    14000224e <_FindPESectionByName+0x7e>
   14000220c:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   140002210:	48 8d 5c 10 18       	lea    0x18(%rax,%rdx,1),%rbx
   140002215:	0f b7 50 06          	movzwl 0x6(%rax),%edx
   140002219:	66 85 d2             	test   %dx,%dx
   14000221c:	74 42                	je     140002260 <_FindPESectionByName+0x90>
   14000221e:	8d 42 ff             	lea    -0x1(%rdx),%eax
   140002221:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002225:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
   14000222a:	eb 0d                	jmp    140002239 <_FindPESectionByName+0x69>
   14000222c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002230:	48 83 c3 28          	add    $0x28,%rbx
   140002234:	48 39 fb             	cmp    %rdi,%rbx
   140002237:	74 27                	je     140002260 <_FindPESectionByName+0x90>
   140002239:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   14000223f:	48 89 f2             	mov    %rsi,%rdx
   140002242:	48 89 d9             	mov    %rbx,%rcx
   140002245:	e8 ee 05 00 00       	call   140002838 <strncmp>
   14000224a:	85 c0                	test   %eax,%eax
   14000224c:	75 e2                	jne    140002230 <_FindPESectionByName+0x60>
   14000224e:	48 89 d8             	mov    %rbx,%rax
   140002251:	48 83 c4 20          	add    $0x20,%rsp
   140002255:	5b                   	pop    %rbx
   140002256:	5e                   	pop    %rsi
   140002257:	5f                   	pop    %rdi
   140002258:	c3                   	ret
   140002259:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002260:	31 db                	xor    %ebx,%ebx
   140002262:	48 89 d8             	mov    %rbx,%rax
   140002265:	48 83 c4 20          	add    $0x20,%rsp
   140002269:	5b                   	pop    %rbx
   14000226a:	5e                   	pop    %rsi
   14000226b:	5f                   	pop    %rdi
   14000226c:	c3                   	ret
   14000226d:	0f 1f 00             	nopl   (%rax)

0000000140002270 <__mingw_GetSectionForAddress>:
   140002270:	48 8b 15 29 21 00 00 	mov    0x2129(%rip),%rdx        # 1400043a0 <.refptr.__ImageBase>
   140002277:	31 c0                	xor    %eax,%eax
   140002279:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000227e:	75 10                	jne    140002290 <__mingw_GetSectionForAddress+0x20>
   140002280:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002284:	49 01 d0             	add    %rdx,%r8
   140002287:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000228e:	74 08                	je     140002298 <__mingw_GetSectionForAddress+0x28>
   140002290:	c3                   	ret
   140002291:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002298:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000229f:	75 ef                	jne    140002290 <__mingw_GetSectionForAddress+0x20>
   1400022a1:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   1400022a6:	48 29 d1             	sub    %rdx,%rcx
   1400022a9:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   1400022ae:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   1400022b3:	66 45 85 c0          	test   %r8w,%r8w
   1400022b7:	74 34                	je     1400022ed <__mingw_GetSectionForAddress+0x7d>
   1400022b9:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   1400022bd:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   1400022c1:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   1400022c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400022cd:	00 00 00 
   1400022d0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   1400022d4:	4c 89 c2             	mov    %r8,%rdx
   1400022d7:	4c 39 c1             	cmp    %r8,%rcx
   1400022da:	72 08                	jb     1400022e4 <__mingw_GetSectionForAddress+0x74>
   1400022dc:	03 50 08             	add    0x8(%rax),%edx
   1400022df:	48 39 d1             	cmp    %rdx,%rcx
   1400022e2:	72 ac                	jb     140002290 <__mingw_GetSectionForAddress+0x20>
   1400022e4:	48 83 c0 28          	add    $0x28,%rax
   1400022e8:	4c 39 c8             	cmp    %r9,%rax
   1400022eb:	75 e3                	jne    1400022d0 <__mingw_GetSectionForAddress+0x60>
   1400022ed:	31 c0                	xor    %eax,%eax
   1400022ef:	c3                   	ret

00000001400022f0 <__mingw_GetSectionCount>:
   1400022f0:	48 8b 05 a9 20 00 00 	mov    0x20a9(%rip),%rax        # 1400043a0 <.refptr.__ImageBase>
   1400022f7:	31 c9                	xor    %ecx,%ecx
   1400022f9:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   1400022fe:	75 0f                	jne    14000230f <__mingw_GetSectionCount+0x1f>
   140002300:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140002304:	48 01 d0             	add    %rdx,%rax
   140002307:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   14000230d:	74 09                	je     140002318 <__mingw_GetSectionCount+0x28>
   14000230f:	89 c8                	mov    %ecx,%eax
   140002311:	c3                   	ret
   140002312:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002318:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000231e:	75 ef                	jne    14000230f <__mingw_GetSectionCount+0x1f>
   140002320:	0f b7 48 06          	movzwl 0x6(%rax),%ecx
   140002324:	89 c8                	mov    %ecx,%eax
   140002326:	c3                   	ret
   140002327:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000232e:	00 00 

0000000140002330 <_FindPESectionExec>:
   140002330:	4c 8b 05 69 20 00 00 	mov    0x2069(%rip),%r8        # 1400043a0 <.refptr.__ImageBase>
   140002337:	31 c0                	xor    %eax,%eax
   140002339:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   14000233f:	75 0f                	jne    140002350 <_FindPESectionExec+0x20>
   140002341:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   140002345:	4c 01 c2             	add    %r8,%rdx
   140002348:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   14000234e:	74 08                	je     140002358 <_FindPESectionExec+0x28>
   140002350:	c3                   	ret
   140002351:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002358:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000235e:	75 f0                	jne    140002350 <_FindPESectionExec+0x20>
   140002360:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   140002364:	44 0f b7 42 06       	movzwl 0x6(%rdx),%r8d
   140002369:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   14000236e:	66 45 85 c0          	test   %r8w,%r8w
   140002372:	74 2c                	je     1400023a0 <_FindPESectionExec+0x70>
   140002374:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   140002378:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   14000237c:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   140002381:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002388:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   14000238c:	74 09                	je     140002397 <_FindPESectionExec+0x67>
   14000238e:	48 85 c9             	test   %rcx,%rcx
   140002391:	74 bd                	je     140002350 <_FindPESectionExec+0x20>
   140002393:	48 83 e9 01          	sub    $0x1,%rcx
   140002397:	48 83 c0 28          	add    $0x28,%rax
   14000239b:	48 39 c2             	cmp    %rax,%rdx
   14000239e:	75 e8                	jne    140002388 <_FindPESectionExec+0x58>
   1400023a0:	31 c0                	xor    %eax,%eax
   1400023a2:	c3                   	ret
   1400023a3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400023aa:	00 00 00 00 
   1400023ae:	66 90                	xchg   %ax,%ax

00000001400023b0 <_GetPEImageBase>:
   1400023b0:	48 8b 05 e9 1f 00 00 	mov    0x1fe9(%rip),%rax        # 1400043a0 <.refptr.__ImageBase>
   1400023b7:	31 d2                	xor    %edx,%edx
   1400023b9:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   1400023be:	75 0f                	jne    1400023cf <_GetPEImageBase+0x1f>
   1400023c0:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
   1400023c4:	48 01 c1             	add    %rax,%rcx
   1400023c7:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   1400023cd:	74 09                	je     1400023d8 <_GetPEImageBase+0x28>
   1400023cf:	48 89 d0             	mov    %rdx,%rax
   1400023d2:	c3                   	ret
   1400023d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400023d8:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   1400023de:	48 0f 44 d0          	cmove  %rax,%rdx
   1400023e2:	48 89 d0             	mov    %rdx,%rax
   1400023e5:	c3                   	ret
   1400023e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400023ed:	00 00 00 

00000001400023f0 <_IsNonwritableInCurrentImage>:
   1400023f0:	48 8b 15 a9 1f 00 00 	mov    0x1fa9(%rip),%rdx        # 1400043a0 <.refptr.__ImageBase>
   1400023f7:	31 c0                	xor    %eax,%eax
   1400023f9:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400023fe:	75 10                	jne    140002410 <_IsNonwritableInCurrentImage+0x20>
   140002400:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002404:	49 01 d0             	add    %rdx,%r8
   140002407:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000240e:	74 08                	je     140002418 <_IsNonwritableInCurrentImage+0x28>
   140002410:	c3                   	ret
   140002411:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002418:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000241f:	75 ef                	jne    140002410 <_IsNonwritableInCurrentImage+0x20>
   140002421:	48 29 d1             	sub    %rdx,%rcx
   140002424:	45 0f b7 48 06       	movzwl 0x6(%r8),%r9d
   140002429:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   14000242e:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140002433:	66 45 85 c9          	test   %r9w,%r9w
   140002437:	74 d7                	je     140002410 <_IsNonwritableInCurrentImage+0x20>
   140002439:	41 8d 41 ff          	lea    -0x1(%r9),%eax
   14000243d:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002441:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   140002446:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000244d:	00 00 00 
   140002450:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   140002454:	4c 89 c0             	mov    %r8,%rax
   140002457:	4c 39 c1             	cmp    %r8,%rcx
   14000245a:	72 08                	jb     140002464 <_IsNonwritableInCurrentImage+0x74>
   14000245c:	03 42 08             	add    0x8(%rdx),%eax
   14000245f:	48 39 c1             	cmp    %rax,%rcx
   140002462:	72 0c                	jb     140002470 <_IsNonwritableInCurrentImage+0x80>
   140002464:	48 83 c2 28          	add    $0x28,%rdx
   140002468:	4c 39 ca             	cmp    %r9,%rdx
   14000246b:	75 e3                	jne    140002450 <_IsNonwritableInCurrentImage+0x60>
   14000246d:	31 c0                	xor    %eax,%eax
   14000246f:	c3                   	ret
   140002470:	8b 42 24             	mov    0x24(%rdx),%eax
   140002473:	f7 d0                	not    %eax
   140002475:	c1 e8 1f             	shr    $0x1f,%eax
   140002478:	c3                   	ret
   140002479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002480 <__mingw_enum_import_library_names>:
   140002480:	4c 8b 1d 19 1f 00 00 	mov    0x1f19(%rip),%r11        # 1400043a0 <.refptr.__ImageBase>
   140002487:	45 31 c9             	xor    %r9d,%r9d
   14000248a:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   140002490:	75 10                	jne    1400024a2 <__mingw_enum_import_library_names+0x22>
   140002492:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   140002496:	4d 01 d8             	add    %r11,%r8
   140002499:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400024a0:	74 0e                	je     1400024b0 <__mingw_enum_import_library_names+0x30>
   1400024a2:	4c 89 c8             	mov    %r9,%rax
   1400024a5:	c3                   	ret
   1400024a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400024ad:	00 00 00 
   1400024b0:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400024b7:	75 e9                	jne    1400024a2 <__mingw_enum_import_library_names+0x22>
   1400024b9:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   1400024c0:	85 c0                	test   %eax,%eax
   1400024c2:	74 de                	je     1400024a2 <__mingw_enum_import_library_names+0x22>
   1400024c4:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   1400024c9:	45 0f b7 50 06       	movzwl 0x6(%r8),%r10d
   1400024ce:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   1400024d3:	66 45 85 d2          	test   %r10w,%r10w
   1400024d7:	74 c9                	je     1400024a2 <__mingw_enum_import_library_names+0x22>
   1400024d9:	45 8d 42 ff          	lea    -0x1(%r10),%r8d
   1400024dd:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   1400024e1:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   1400024e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400024ed:	00 00 00 
   1400024f0:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   1400024f4:	4d 89 c8             	mov    %r9,%r8
   1400024f7:	4c 39 c8             	cmp    %r9,%rax
   1400024fa:	72 09                	jb     140002505 <__mingw_enum_import_library_names+0x85>
   1400024fc:	44 03 42 08          	add    0x8(%rdx),%r8d
   140002500:	4c 39 c0             	cmp    %r8,%rax
   140002503:	72 13                	jb     140002518 <__mingw_enum_import_library_names+0x98>
   140002505:	48 83 c2 28          	add    $0x28,%rdx
   140002509:	49 39 d2             	cmp    %rdx,%r10
   14000250c:	75 e2                	jne    1400024f0 <__mingw_enum_import_library_names+0x70>
   14000250e:	45 31 c9             	xor    %r9d,%r9d
   140002511:	4c 89 c8             	mov    %r9,%rax
   140002514:	c3                   	ret
   140002515:	0f 1f 00             	nopl   (%rax)
   140002518:	4c 01 d8             	add    %r11,%rax
   14000251b:	eb 0a                	jmp    140002527 <__mingw_enum_import_library_names+0xa7>
   14000251d:	0f 1f 00             	nopl   (%rax)
   140002520:	83 e9 01             	sub    $0x1,%ecx
   140002523:	48 83 c0 14          	add    $0x14,%rax
   140002527:	44 8b 40 04          	mov    0x4(%rax),%r8d
   14000252b:	45 85 c0             	test   %r8d,%r8d
   14000252e:	75 07                	jne    140002537 <__mingw_enum_import_library_names+0xb7>
   140002530:	8b 50 0c             	mov    0xc(%rax),%edx
   140002533:	85 d2                	test   %edx,%edx
   140002535:	74 d7                	je     14000250e <__mingw_enum_import_library_names+0x8e>
   140002537:	85 c9                	test   %ecx,%ecx
   140002539:	7f e5                	jg     140002520 <__mingw_enum_import_library_names+0xa0>
   14000253b:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   14000253f:	4d 01 d9             	add    %r11,%r9
   140002542:	4c 89 c8             	mov    %r9,%rax
   140002545:	c3                   	ret
   140002546:	90                   	nop
   140002547:	90                   	nop
   140002548:	90                   	nop
   140002549:	90                   	nop
   14000254a:	90                   	nop
   14000254b:	90                   	nop
   14000254c:	90                   	nop
   14000254d:	90                   	nop
   14000254e:	90                   	nop
   14000254f:	90                   	nop

0000000140002550 <___chkstk_ms>:
   140002550:	51                   	push   %rcx
   140002551:	50                   	push   %rax
   140002552:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002558:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   14000255d:	72 19                	jb     140002578 <___chkstk_ms+0x28>
   14000255f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140002566:	48 83 09 00          	orq    $0x0,(%rcx)
   14000256a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140002570:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002576:	77 e7                	ja     14000255f <___chkstk_ms+0xf>
   140002578:	48 29 c1             	sub    %rax,%rcx
   14000257b:	48 83 09 00          	orq    $0x0,(%rcx)
   14000257f:	58                   	pop    %rax
   140002580:	59                   	pop    %rcx
   140002581:	c3                   	ret
   140002582:	90                   	nop
   140002583:	90                   	nop
   140002584:	90                   	nop
   140002585:	90                   	nop
   140002586:	90                   	nop
   140002587:	90                   	nop
   140002588:	90                   	nop
   140002589:	90                   	nop
   14000258a:	90                   	nop
   14000258b:	90                   	nop
   14000258c:	90                   	nop
   14000258d:	90                   	nop
   14000258e:	90                   	nop
   14000258f:	90                   	nop

0000000140002590 <vfprintf>:
   140002590:	48 83 ec 38          	sub    $0x38,%rsp
   140002594:	45 31 c9             	xor    %r9d,%r9d
   140002597:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
   14000259c:	49 89 d0             	mov    %rdx,%r8
   14000259f:	48 89 ca             	mov    %rcx,%rdx
   1400025a2:	31 c9                	xor    %ecx,%ecx
   1400025a4:	e8 af 02 00 00       	call   140002858 <__stdio_common_vfprintf>
   1400025a9:	48 83 c4 38          	add    $0x38,%rsp
   1400025ad:	c3                   	ret
   1400025ae:	90                   	nop
   1400025af:	90                   	nop

00000001400025b0 <fprintf>:
   1400025b0:	48 83 ec 48          	sub    $0x48,%rsp
   1400025b4:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
   1400025b9:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   1400025be:	49 89 d0             	mov    %rdx,%r8
   1400025c1:	48 89 ca             	mov    %rcx,%rdx
   1400025c4:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   1400025c9:	31 c9                	xor    %ecx,%ecx
   1400025cb:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   1400025d0:	45 31 c9             	xor    %r9d,%r9d
   1400025d3:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
   1400025d8:	e8 7b 02 00 00       	call   140002858 <__stdio_common_vfprintf>
   1400025dd:	48 83 c4 48          	add    $0x48,%rsp
   1400025e1:	c3                   	ret
   1400025e2:	90                   	nop
   1400025e3:	90                   	nop
   1400025e4:	90                   	nop
   1400025e5:	90                   	nop
   1400025e6:	90                   	nop
   1400025e7:	90                   	nop
   1400025e8:	90                   	nop
   1400025e9:	90                   	nop
   1400025ea:	90                   	nop
   1400025eb:	90                   	nop
   1400025ec:	90                   	nop
   1400025ed:	90                   	nop
   1400025ee:	90                   	nop
   1400025ef:	90                   	nop

00000001400025f0 <_get_output_format>:
   1400025f0:	31 c0                	xor    %eax,%eax
   1400025f2:	c3                   	ret
   1400025f3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400025fa:	00 00 00 00 
   1400025fe:	66 90                	xchg   %ax,%ax

0000000140002600 <__getmainargs>:
   140002600:	41 54                	push   %r12
   140002602:	55                   	push   %rbp
   140002603:	57                   	push   %rdi
   140002604:	56                   	push   %rsi
   140002605:	53                   	push   %rbx
   140002606:	48 83 ec 20          	sub    $0x20,%rsp
   14000260a:	4c 8b 64 24 70       	mov    0x70(%rsp),%r12
   14000260f:	44 89 cd             	mov    %r9d,%ebp
   140002612:	48 89 d6             	mov    %rdx,%rsi
   140002615:	4c 89 c3             	mov    %r8,%rbx
   140002618:	48 89 cf             	mov    %rcx,%rdi
   14000261b:	e8 98 02 00 00       	call   1400028b8 <_initialize_narrow_environment>
   140002620:	83 fd 01             	cmp    $0x1,%ebp
   140002623:	b9 01 00 00 00       	mov    $0x1,%ecx
   140002628:	83 d9 ff             	sbb    $0xffffffff,%ecx
   14000262b:	e8 60 02 00 00       	call   140002890 <_configure_narrow_argv>
   140002630:	e8 3b 02 00 00       	call   140002870 <__p___argc>
   140002635:	8b 00                	mov    (%rax),%eax
   140002637:	89 07                	mov    %eax,(%rdi)
   140002639:	e8 3a 02 00 00       	call   140002878 <__p___argv>
   14000263e:	48 8b 00             	mov    (%rax),%rax
   140002641:	48 89 06             	mov    %rax,(%rsi)
   140002644:	e8 f7 02 00 00       	call   140002940 <__p__environ>
   140002649:	48 8b 00             	mov    (%rax),%rax
   14000264c:	48 89 03             	mov    %rax,(%rbx)
   14000264f:	4d 85 e4             	test   %r12,%r12
   140002652:	74 09                	je     14000265d <__getmainargs+0x5d>
   140002654:	41 8b 0c 24          	mov    (%r12),%ecx
   140002658:	e8 c3 02 00 00       	call   140002920 <_set_new_mode>
   14000265d:	31 c0                	xor    %eax,%eax
   14000265f:	48 83 c4 20          	add    $0x20,%rsp
   140002663:	5b                   	pop    %rbx
   140002664:	5e                   	pop    %rsi
   140002665:	5f                   	pop    %rdi
   140002666:	5d                   	pop    %rbp
   140002667:	41 5c                	pop    %r12
   140002669:	c3                   	ret
   14000266a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140002670 <__wgetmainargs>:
   140002670:	41 54                	push   %r12
   140002672:	55                   	push   %rbp
   140002673:	57                   	push   %rdi
   140002674:	56                   	push   %rsi
   140002675:	53                   	push   %rbx
   140002676:	48 83 ec 20          	sub    $0x20,%rsp
   14000267a:	4c 8b 64 24 70       	mov    0x70(%rsp),%r12
   14000267f:	44 89 cd             	mov    %r9d,%ebp
   140002682:	48 89 d6             	mov    %rdx,%rsi
   140002685:	4c 89 c3             	mov    %r8,%rbx
   140002688:	48 89 cf             	mov    %rcx,%rdi
   14000268b:	e8 30 02 00 00       	call   1400028c0 <_initialize_wide_environment>
   140002690:	83 fd 01             	cmp    $0x1,%ebp
   140002693:	b9 01 00 00 00       	mov    $0x1,%ecx
   140002698:	83 d9 ff             	sbb    $0xffffffff,%ecx
   14000269b:	e8 f8 01 00 00       	call   140002898 <_configure_wide_argv>
   1400026a0:	e8 cb 01 00 00       	call   140002870 <__p___argc>
   1400026a5:	8b 00                	mov    (%rax),%eax
   1400026a7:	89 07                	mov    %eax,(%rdi)
   1400026a9:	e8 d2 01 00 00       	call   140002880 <__p___wargv>
   1400026ae:	48 8b 00             	mov    (%rax),%rax
   1400026b1:	48 89 06             	mov    %rax,(%rsi)
   1400026b4:	e8 8f 02 00 00       	call   140002948 <__p__wenviron>
   1400026b9:	48 8b 00             	mov    (%rax),%rax
   1400026bc:	48 89 03             	mov    %rax,(%rbx)
   1400026bf:	4d 85 e4             	test   %r12,%r12
   1400026c2:	74 09                	je     1400026cd <__wgetmainargs+0x5d>
   1400026c4:	41 8b 0c 24          	mov    (%r12),%ecx
   1400026c8:	e8 53 02 00 00       	call   140002920 <_set_new_mode>
   1400026cd:	31 c0                	xor    %eax,%eax
   1400026cf:	48 83 c4 20          	add    $0x20,%rsp
   1400026d3:	5b                   	pop    %rbx
   1400026d4:	5e                   	pop    %rsi
   1400026d5:	5f                   	pop    %rdi
   1400026d6:	5d                   	pop    %rbp
   1400026d7:	41 5c                	pop    %r12
   1400026d9:	c3                   	ret
   1400026da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400026e0 <_onexit>:
   1400026e0:	53                   	push   %rbx
   1400026e1:	48 83 ec 20          	sub    $0x20,%rsp
   1400026e5:	48 89 cb             	mov    %rcx,%rbx
   1400026e8:	e8 bb 01 00 00       	call   1400028a8 <_crt_atexit>
   1400026ed:	85 c0                	test   %eax,%eax
   1400026ef:	b8 00 00 00 00       	mov    $0x0,%eax
   1400026f4:	48 0f 44 c3          	cmove  %rbx,%rax
   1400026f8:	48 83 c4 20          	add    $0x20,%rsp
   1400026fc:	5b                   	pop    %rbx
   1400026fd:	c3                   	ret
   1400026fe:	66 90                	xchg   %ax,%ax

0000000140002700 <at_quick_exit>:
   140002700:	48 8b 05 39 1d 00 00 	mov    0x1d39(%rip),%rax        # 140004440 <.refptr.__mingw_module_is_dll>
   140002707:	80 38 00             	cmpb   $0x0,(%rax)
   14000270a:	74 04                	je     140002710 <at_quick_exit+0x10>
   14000270c:	31 c0                	xor    %eax,%eax
   14000270e:	c3                   	ret
   14000270f:	90                   	nop
   140002710:	e9 8b 01 00 00       	jmp    1400028a0 <_crt_at_quick_exit>
   140002715:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000271c:	00 00 00 00 

0000000140002720 <_amsg_exit>:
   140002720:	53                   	push   %rbx
   140002721:	48 83 ec 20          	sub    $0x20,%rsp
   140002725:	89 cb                	mov    %ecx,%ebx
   140002727:	b9 02 00 00 00       	mov    $0x2,%ecx
   14000272c:	e8 0f 01 00 00       	call   140002840 <__acrt_iob_func>
   140002731:	41 89 d8             	mov    %ebx,%r8d
   140002734:	48 8d 15 15 1c 00 00 	lea    0x1c15(%rip),%rdx        # 140004350 <.rdata>
   14000273b:	48 89 c1             	mov    %rax,%rcx
   14000273e:	e8 6d fe ff ff       	call   1400025b0 <fprintf>
   140002743:	b9 ff 00 00 00       	mov    $0xff,%ecx
   140002748:	e8 63 01 00 00       	call   1400028b0 <_exit>
   14000274d:	90                   	nop
   14000274e:	66 90                	xchg   %ax,%ax

0000000140002750 <__ms_fwprintf>:
   140002750:	48 83 ec 48          	sub    $0x48,%rsp
   140002754:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
   140002759:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000275e:	49 89 d0             	mov    %rdx,%r8
   140002761:	48 89 ca             	mov    %rcx,%rdx
   140002764:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140002769:	b9 04 00 00 00       	mov    $0x4,%ecx
   14000276e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140002773:	45 31 c9             	xor    %r9d,%r9d
   140002776:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
   14000277b:	e8 e0 00 00 00       	call   140002860 <__stdio_common_vfwprintf>
   140002780:	48 83 c4 48          	add    $0x48,%rsp
   140002784:	c3                   	ret
   140002785:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000278c:	00 00 00 00 

0000000140002790 <tzset>:
   140002790:	48 83 ec 28          	sub    $0x28,%rsp
   140002794:	48 8b 05 55 1c 00 00 	mov    0x1c55(%rip),%rax        # 1400043f0 <.refptr.__imp__tzset>
   14000279b:	ff 10                	call   *(%rax)
   14000279d:	e8 7e 00 00 00       	call   140002820 <__tzname>
   1400027a2:	48 89 05 17 09 00 00 	mov    %rax,0x917(%rip)        # 1400030c0 <__imp_tzname>
   1400027a9:	e8 6a 00 00 00       	call   140002818 <__timezone>
   1400027ae:	48 89 05 03 09 00 00 	mov    %rax,0x903(%rip)        # 1400030b8 <__imp_timezone>
   1400027b5:	e8 56 00 00 00       	call   140002810 <__daylight>
   1400027ba:	48 89 05 ef 08 00 00 	mov    %rax,0x8ef(%rip)        # 1400030b0 <__imp_daylight>
   1400027c1:	48 83 c4 28          	add    $0x28,%rsp
   1400027c5:	c3                   	ret
   1400027c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400027cd:	00 00 00 

00000001400027d0 <_tzset>:
   1400027d0:	48 83 ec 28          	sub    $0x28,%rsp
   1400027d4:	48 8b 05 15 1c 00 00 	mov    0x1c15(%rip),%rax        # 1400043f0 <.refptr.__imp__tzset>
   1400027db:	ff 10                	call   *(%rax)
   1400027dd:	e8 3e 00 00 00       	call   140002820 <__tzname>
   1400027e2:	48 89 05 d7 08 00 00 	mov    %rax,0x8d7(%rip)        # 1400030c0 <__imp_tzname>
   1400027e9:	e8 2a 00 00 00       	call   140002818 <__timezone>
   1400027ee:	48 89 05 c3 08 00 00 	mov    %rax,0x8c3(%rip)        # 1400030b8 <__imp_timezone>
   1400027f5:	e8 16 00 00 00       	call   140002810 <__daylight>
   1400027fa:	48 89 05 af 08 00 00 	mov    %rax,0x8af(%rip)        # 1400030b0 <__imp_daylight>
   140002801:	48 83 c4 28          	add    $0x28,%rsp
   140002805:	c3                   	ret
   140002806:	90                   	nop
   140002807:	90                   	nop
   140002808:	90                   	nop
   140002809:	90                   	nop
   14000280a:	90                   	nop
   14000280b:	90                   	nop
   14000280c:	90                   	nop
   14000280d:	90                   	nop
   14000280e:	90                   	nop
   14000280f:	90                   	nop

0000000140002810 <__daylight>:
   140002810:	ff 25 a2 5c 00 00    	jmp    *0x5ca2(%rip)        # 1400084b8 <__imp___daylight>
   140002816:	90                   	nop
   140002817:	90                   	nop

0000000140002818 <__timezone>:
   140002818:	ff 25 a2 5c 00 00    	jmp    *0x5ca2(%rip)        # 1400084c0 <__imp___timezone>
   14000281e:	90                   	nop
   14000281f:	90                   	nop

0000000140002820 <__tzname>:
   140002820:	ff 25 a2 5c 00 00    	jmp    *0x5ca2(%rip)        # 1400084c8 <__imp___tzname>
   140002826:	90                   	nop
   140002827:	90                   	nop

0000000140002828 <.text>:
   140002828:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000282f:	00 

0000000140002830 <strlen>:
   140002830:	ff 25 6a 5c 00 00    	jmp    *0x5c6a(%rip)        # 1400084a0 <__imp_strlen>
   140002836:	90                   	nop
   140002837:	90                   	nop

0000000140002838 <strncmp>:
   140002838:	ff 25 6a 5c 00 00    	jmp    *0x5c6a(%rip)        # 1400084a8 <__imp_strncmp>
   14000283e:	90                   	nop
   14000283f:	90                   	nop

0000000140002840 <__acrt_iob_func>:
   140002840:	ff 25 22 5c 00 00    	jmp    *0x5c22(%rip)        # 140008468 <__imp___acrt_iob_func>
   140002846:	90                   	nop
   140002847:	90                   	nop

0000000140002848 <__p__commode>:
   140002848:	ff 25 22 5c 00 00    	jmp    *0x5c22(%rip)        # 140008470 <__imp___p__commode>
   14000284e:	90                   	nop
   14000284f:	90                   	nop

0000000140002850 <__p__fmode>:
   140002850:	ff 25 22 5c 00 00    	jmp    *0x5c22(%rip)        # 140008478 <__imp___p__fmode>
   140002856:	90                   	nop
   140002857:	90                   	nop

0000000140002858 <__stdio_common_vfprintf>:
   140002858:	ff 25 22 5c 00 00    	jmp    *0x5c22(%rip)        # 140008480 <__imp___stdio_common_vfprintf>
   14000285e:	90                   	nop
   14000285f:	90                   	nop

0000000140002860 <__stdio_common_vfwprintf>:
   140002860:	ff 25 22 5c 00 00    	jmp    *0x5c22(%rip)        # 140008488 <__imp___stdio_common_vfwprintf>
   140002866:	90                   	nop
   140002867:	90                   	nop

0000000140002868 <fwrite>:
   140002868:	ff 25 22 5c 00 00    	jmp    *0x5c22(%rip)        # 140008490 <__imp_fwrite>
   14000286e:	90                   	nop
   14000286f:	90                   	nop

0000000140002870 <__p___argc>:
   140002870:	ff 25 62 5b 00 00    	jmp    *0x5b62(%rip)        # 1400083d8 <__imp___p___argc>
   140002876:	90                   	nop
   140002877:	90                   	nop

0000000140002878 <__p___argv>:
   140002878:	ff 25 62 5b 00 00    	jmp    *0x5b62(%rip)        # 1400083e0 <__imp___p___argv>
   14000287e:	90                   	nop
   14000287f:	90                   	nop

0000000140002880 <__p___wargv>:
   140002880:	ff 25 62 5b 00 00    	jmp    *0x5b62(%rip)        # 1400083e8 <__imp___p___wargv>
   140002886:	90                   	nop
   140002887:	90                   	nop

0000000140002888 <_cexit>:
   140002888:	ff 25 62 5b 00 00    	jmp    *0x5b62(%rip)        # 1400083f0 <__imp__cexit>
   14000288e:	90                   	nop
   14000288f:	90                   	nop

0000000140002890 <_configure_narrow_argv>:
   140002890:	ff 25 62 5b 00 00    	jmp    *0x5b62(%rip)        # 1400083f8 <__imp__configure_narrow_argv>
   140002896:	90                   	nop
   140002897:	90                   	nop

0000000140002898 <_configure_wide_argv>:
   140002898:	ff 25 62 5b 00 00    	jmp    *0x5b62(%rip)        # 140008400 <__imp__configure_wide_argv>
   14000289e:	90                   	nop
   14000289f:	90                   	nop

00000001400028a0 <_crt_at_quick_exit>:
   1400028a0:	ff 25 62 5b 00 00    	jmp    *0x5b62(%rip)        # 140008408 <__imp__crt_at_quick_exit>
   1400028a6:	90                   	nop
   1400028a7:	90                   	nop

00000001400028a8 <_crt_atexit>:
   1400028a8:	ff 25 62 5b 00 00    	jmp    *0x5b62(%rip)        # 140008410 <__imp__crt_atexit>
   1400028ae:	90                   	nop
   1400028af:	90                   	nop

00000001400028b0 <_exit>:
   1400028b0:	ff 25 62 5b 00 00    	jmp    *0x5b62(%rip)        # 140008418 <__imp__exit>
   1400028b6:	90                   	nop
   1400028b7:	90                   	nop

00000001400028b8 <_initialize_narrow_environment>:
   1400028b8:	ff 25 62 5b 00 00    	jmp    *0x5b62(%rip)        # 140008420 <__imp__initialize_narrow_environment>
   1400028be:	90                   	nop
   1400028bf:	90                   	nop

00000001400028c0 <_initialize_wide_environment>:
   1400028c0:	ff 25 62 5b 00 00    	jmp    *0x5b62(%rip)        # 140008428 <__imp__initialize_wide_environment>
   1400028c6:	90                   	nop
   1400028c7:	90                   	nop

00000001400028c8 <_initterm>:
   1400028c8:	ff 25 62 5b 00 00    	jmp    *0x5b62(%rip)        # 140008430 <__imp__initterm>
   1400028ce:	90                   	nop
   1400028cf:	90                   	nop

00000001400028d0 <__set_app_type>:
   1400028d0:	ff 25 62 5b 00 00    	jmp    *0x5b62(%rip)        # 140008438 <__imp___set_app_type>
   1400028d6:	90                   	nop
   1400028d7:	90                   	nop

00000001400028d8 <_set_invalid_parameter_handler>:
   1400028d8:	ff 25 62 5b 00 00    	jmp    *0x5b62(%rip)        # 140008440 <__imp__set_invalid_parameter_handler>
   1400028de:	90                   	nop
   1400028df:	90                   	nop

00000001400028e0 <abort>:
   1400028e0:	ff 25 62 5b 00 00    	jmp    *0x5b62(%rip)        # 140008448 <__imp_abort>
   1400028e6:	90                   	nop
   1400028e7:	90                   	nop

00000001400028e8 <exit>:
   1400028e8:	ff 25 62 5b 00 00    	jmp    *0x5b62(%rip)        # 140008450 <__imp_exit>
   1400028ee:	90                   	nop
   1400028ef:	90                   	nop

00000001400028f0 <signal>:
   1400028f0:	ff 25 62 5b 00 00    	jmp    *0x5b62(%rip)        # 140008458 <__imp_signal>
   1400028f6:	90                   	nop
   1400028f7:	90                   	nop
   1400028f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400028ff:	00 

0000000140002900 <__C_specific_handler>:
   140002900:	ff 25 ba 5a 00 00    	jmp    *0x5aba(%rip)        # 1400083c0 <__imp___C_specific_handler>
   140002906:	90                   	nop
   140002907:	90                   	nop

0000000140002908 <memcpy>:
   140002908:	ff 25 ba 5a 00 00    	jmp    *0x5aba(%rip)        # 1400083c8 <__imp_memcpy>
   14000290e:	90                   	nop
   14000290f:	90                   	nop

0000000140002910 <__setusermatherr>:
   140002910:	ff 25 9a 5a 00 00    	jmp    *0x5a9a(%rip)        # 1400083b0 <__imp___setusermatherr>
   140002916:	90                   	nop
   140002917:	90                   	nop
   140002918:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000291f:	00 

0000000140002920 <_set_new_mode>:
   140002920:	ff 25 62 5a 00 00    	jmp    *0x5a62(%rip)        # 140008388 <__imp__set_new_mode>
   140002926:	90                   	nop
   140002927:	90                   	nop

0000000140002928 <calloc>:
   140002928:	ff 25 62 5a 00 00    	jmp    *0x5a62(%rip)        # 140008390 <__imp_calloc>
   14000292e:	90                   	nop
   14000292f:	90                   	nop

0000000140002930 <free>:
   140002930:	ff 25 62 5a 00 00    	jmp    *0x5a62(%rip)        # 140008398 <__imp_free>
   140002936:	90                   	nop
   140002937:	90                   	nop

0000000140002938 <malloc>:
   140002938:	ff 25 62 5a 00 00    	jmp    *0x5a62(%rip)        # 1400083a0 <__imp_malloc>
   14000293e:	90                   	nop
   14000293f:	90                   	nop

0000000140002940 <__p__environ>:
   140002940:	ff 25 2a 5a 00 00    	jmp    *0x5a2a(%rip)        # 140008370 <__imp___p__environ>
   140002946:	90                   	nop
   140002947:	90                   	nop

0000000140002948 <__p__wenviron>:
   140002948:	ff 25 2a 5a 00 00    	jmp    *0x5a2a(%rip)        # 140008378 <__imp___p__wenviron>
   14000294e:	90                   	nop
   14000294f:	90                   	nop

0000000140002950 <_getch>:
   140002950:	ff 25 0a 5a 00 00    	jmp    *0x5a0a(%rip)        # 140008360 <__imp__getch>
   140002956:	90                   	nop
   140002957:	90                   	nop
   140002958:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000295f:	00 

0000000140002960 <VirtualQuery>:
   140002960:	ff 25 ea 59 00 00    	jmp    *0x59ea(%rip)        # 140008350 <__imp_VirtualQuery>
   140002966:	90                   	nop
   140002967:	90                   	nop

0000000140002968 <VirtualProtect>:
   140002968:	ff 25 da 59 00 00    	jmp    *0x59da(%rip)        # 140008348 <__imp_VirtualProtect>
   14000296e:	90                   	nop
   14000296f:	90                   	nop

0000000140002970 <TlsGetValue>:
   140002970:	ff 25 ca 59 00 00    	jmp    *0x59ca(%rip)        # 140008340 <__imp_TlsGetValue>
   140002976:	90                   	nop
   140002977:	90                   	nop

0000000140002978 <Sleep>:
   140002978:	ff 25 ba 59 00 00    	jmp    *0x59ba(%rip)        # 140008338 <__imp_Sleep>
   14000297e:	90                   	nop
   14000297f:	90                   	nop

0000000140002980 <SetUnhandledExceptionFilter>:
   140002980:	ff 25 aa 59 00 00    	jmp    *0x59aa(%rip)        # 140008330 <__imp_SetUnhandledExceptionFilter>
   140002986:	90                   	nop
   140002987:	90                   	nop

0000000140002988 <LeaveCriticalSection>:
   140002988:	ff 25 9a 59 00 00    	jmp    *0x599a(%rip)        # 140008328 <__imp_LeaveCriticalSection>
   14000298e:	90                   	nop
   14000298f:	90                   	nop

0000000140002990 <InitializeCriticalSection>:
   140002990:	ff 25 8a 59 00 00    	jmp    *0x598a(%rip)        # 140008320 <__imp_InitializeCriticalSection>
   140002996:	90                   	nop
   140002997:	90                   	nop

0000000140002998 <GetLastError>:
   140002998:	ff 25 7a 59 00 00    	jmp    *0x597a(%rip)        # 140008318 <__imp_GetLastError>
   14000299e:	90                   	nop
   14000299f:	90                   	nop

00000001400029a0 <EnterCriticalSection>:
   1400029a0:	ff 25 6a 59 00 00    	jmp    *0x596a(%rip)        # 140008310 <__imp_EnterCriticalSection>
   1400029a6:	90                   	nop
   1400029a7:	90                   	nop

00000001400029a8 <DeleteCriticalSection>:
   1400029a8:	ff 25 5a 59 00 00    	jmp    *0x595a(%rip)        # 140008308 <__imp_DeleteCriticalSection>
   1400029ae:	90                   	nop
   1400029af:	90                   	nop

00000001400029b0 <RegOpenKeyExA>:
   1400029b0:	ff 25 42 59 00 00    	jmp    *0x5942(%rip)        # 1400082f8 <__imp_RegOpenKeyExA>
   1400029b6:	90                   	nop
   1400029b7:	90                   	nop

00000001400029b8 <RegDeleteKeyA>:
   1400029b8:	ff 25 32 59 00 00    	jmp    *0x5932(%rip)        # 1400082f0 <__imp_RegDeleteKeyA>
   1400029be:	90                   	nop
   1400029bf:	90                   	nop

00000001400029c0 <RegCloseKey>:
   1400029c0:	ff 25 22 59 00 00    	jmp    *0x5922(%rip)        # 1400082e8 <__IAT_start__>
   1400029c6:	90                   	nop
   1400029c7:	90                   	nop
   1400029c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400029cf:	00 

00000001400029d0 <register_frame_ctor>:
   1400029d0:	e9 5b ea ff ff       	jmp    140001430 <__gcc_register_frame>
   1400029d5:	90                   	nop
   1400029d6:	90                   	nop
   1400029d7:	90                   	nop
   1400029d8:	90                   	nop
   1400029d9:	90                   	nop
   1400029da:	90                   	nop
   1400029db:	90                   	nop
   1400029dc:	90                   	nop
   1400029dd:	90                   	nop
   1400029de:	90                   	nop
   1400029df:	90                   	nop

00000001400029e0 <__CTOR_LIST__>:
   1400029e0:	ff                   	(bad)
   1400029e1:	ff                   	(bad)
   1400029e2:	ff                   	(bad)
   1400029e3:	ff                   	(bad)
   1400029e4:	ff                   	(bad)
   1400029e5:	ff                   	(bad)
   1400029e6:	ff                   	(bad)
   1400029e7:	ff                   	.byte 0xff

00000001400029e8 <.ctors.65535>:
   1400029e8:	d0 29                	shrb   (%rcx)
   1400029ea:	00 40 01             	add    %al,0x1(%rax)
	...

00000001400029f8 <__DTOR_LIST__>:
   1400029f8:	ff                   	(bad)
   1400029f9:	ff                   	(bad)
   1400029fa:	ff                   	(bad)
   1400029fb:	ff                   	(bad)
   1400029fc:	ff                   	(bad)
   1400029fd:	ff                   	(bad)
   1400029fe:	ff                   	(bad)
   1400029ff:	ff 00                	incl   (%rax)
   140002a01:	00 00                	add    %al,(%rax)
   140002a03:	00 00                	add    %al,(%rax)
   140002a05:	00 00                	add    %al,(%rax)
	...
