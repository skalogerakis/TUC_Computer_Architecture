      � H @        \��%         G�         :   
Behavioral  � C�          R	  � <i �A � � &� F	 U� ]y �� �! �y $� <!  �     U�  �� @Q �) � q *� I� Y� aa �q �	 �a (� @	        �� �9 ֑  � 89  �       �  �     C�          '  2�  J9         *�  6�  N!          U�     @     Y     ' Q3     q  A      #)     @      Y     v  �\     Y      *�     :   imm16  *�  �     p   5  '      #)          �     v  ��          6�     :   ImmExt  6�  �     p   6  2�      .�          �     @     >�     ' Q3     :�  Bi      FQ     @      >�     v  �\     >�      N!     :   	imm32_out  N!  �     p   7  J9     FQ          �     :   extender  U�  �        3  R	  �  �          ma  ��  �A  ��  �!  �  �a  �1         qI  ��  �)  ��  �	  �y  �I  �          ��     @     a�     ' Q3     ]�  e�      iy     @      a�     v  �\     a�      qI     :   Ard1  qI  Y�     p   >  ma      iy          Y�     @     y     ' Q3     u1  }      ��     @      y     v  �\     y      ��     :   Ard2  ��  Y�     p   ?  ��      ��          Y�     @     ��     ' Q3     ��  �q      �Y     @      ��     v  �\     ��      �)     :   Awr  �)  Y�     p   @  �A      �Y          Y�     @     ��     ' Q3     �  ��      ��     @      ��     v  �\     ��      ��     :   Dout1  ��  Y�     p   A  ��     ��          Y�     @     �i     ' Q3     ��  �Q      �9     @      �i     v  �\     �i      �	     :   Dout2  �	  Y�     p   B  �!     �9          Y�     @     ��     ' Q3     ��  ��      ީ     @      ��     v  �\     ��      �y     :   Din  �y  Y�     p   C  �      ީ          Y�     :   WrEN  �I  Y�     p   D  �a      .�          Y�     :   clk  �  Y�     p   E  �1      .�          Y�     :   register_file  ��  �        <  �  Y�  �         Y ) 4�        A ! 8�         @Q     @    	�     ' Q3    � �     q     @     	�     v  �\    	�     A     :   imm32_in A �     p   L Y     q         �     :   OpCode ! �     p   M )      .�         �     @    (�     ' Q3    $� ,�     0�     @     (�     v  �\    (�     8�     :   	imm32_out 8� �     p   N 4�    0�         �     :   shiftBox @Q  �        J <i �  �         W� o1 w �q        [� s z� �Y         �)     @    L	     ' Q3    H! O�     S�     @     L	     v  �\    L	     [�     :   	Instruct0 [� D9     p   T W�     S�         D9     @    cy     ' Q3    _� ga     kI     @     cy     v  �\    cy     s     :   	Instruct1 s D9     p   U o1     kI         D9     :   sel z� D9     p   V w      .�         D9     @    ��     ' Q3    ~� ��     ��     @     ��     v  �\    ��     �Y     :   Out_instruct �Y D9     p   W �q    ��         D9     :   MUX10to5 �)  �        R �A D9  �         �� �	 �� �I        �� �� �� �1         �     @    ��     ' Q3    �� ��     ��     @     ��     v  �\    ��     ��     :   	Instruct0 �� �     p   ] ��     ��         �     @    �Q     ' Q3    �i �9     �!     @     �Q     v  �\    �Q     ��     :   	Instruct1 �� �     p   ^ �	     �!         �     :   sel �� �     p   _ ��      .�         �     @    ܑ     ' Q3    ة �y     �a     @     ܑ     v  �\    ܑ     �1     :   Out_instruct �1 �     p   ` �I    �a         �     :   	MUX64to32 �  �        [ � �  �     @    ��     ' Q3    �� ��     �     @     ��     v  �\    ��     q     :   MuxToRF q  �     p   f �    � A      �     
    ��  � A      �    Y q     @         ' Q3    ) �     "�     @          v  �\         *�     :   MuxToWrData *�  �     p   g &�    "� 2�      �     
      � 2�      "�    .� *�     @    :Q     ' Q3    6i >9     B!     @     :Q     v  �\    :Q     I�     :   Ext32 I�  �     p   h F	    B! Q�      �     
    :Q  � Q�      B!    M� I�     :   opCodeDummy Y�  �     p   i U�     .�  �      �     :   byte_signal aa  �     p   j ]y     .�  �      �     @    i1     ' Q3    eI m     q     @     i1     q     *� i1 t�     \     ' q ��     \     2�  �� ��     \     J9 F	 ��        p ��  R	    t� x� |�      �     :   EXTEND �q  �     E   p �� ��  �     @    �A     ' Q3    �Y �)     �     @    �A     q     *� �A ��     \    W� � �9     @    ��     ' Q3    �� ��     ��     @    ��     q     *� �� ��     \    o1 �� �9     \    w  u2 �9     \    �q � �9        w �! �A    �� �� �i �Q      �     :   	MUX_INSTR �	  �     E   w �! �9  �     \    ��  N" ֑     \    �	  e� ֑     \    ��  mb ֑     \    �I &� ֑        ~ �y �    �� �� �� ҩ      �     :   MUX_ALU_MEM �a  �     E   ~ �y ֑  �     @    �1     ' Q3    �I �     �     @    �1     q     *� �1 ��     \     ma �  �     \     �� �  �     @    ��     ' Q3    �� �     q     @    ��     q     *� �� 	Y     \     �A q  �     \     ��  �R  �     \     �!  ��  �     \     � &�  �     \     �a  6�  �     \     �1  ��  �        � $�  �    �� �� 	Y A )  � �      �     :   RF (�  �     E   � $�  �  �     \    Y F	 89     \    )  } 89     \    4�  � 89        � <! <i    ,� 0i 4Q      �     :   SHIFT @	  �     E   � <! 89  �     %     �  �  �z     � G�     �   :D:/TUC_PROJECT/TUC_Computer_Architecture/Lab4/DECSTAGE.vhd C�  �                DECSTAGE   
Behavioral   work      DECSTAGE   
Behavioral   work      DECSTAGE       work      standard       std      std_logic_1164       IEEE