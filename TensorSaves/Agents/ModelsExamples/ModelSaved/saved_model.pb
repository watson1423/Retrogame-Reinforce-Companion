??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.0-49-g85c8b2a817f8??
?
conv2d_53/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*!
shared_nameconv2d_53/kernel
}
$conv2d_53/kernel/Read/ReadVariableOpReadVariableOpconv2d_53/kernel*&
_output_shapes
:

*
dtype0
t
conv2d_53/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_53/bias
m
"conv2d_53/bias/Read/ReadVariableOpReadVariableOpconv2d_53/bias*
_output_shapes
:*
dtype0
?
conv2d_54/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:-*!
shared_nameconv2d_54/kernel
}
$conv2d_54/kernel/Read/ReadVariableOpReadVariableOpconv2d_54/kernel*&
_output_shapes
:-*
dtype0
t
conv2d_54/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:-*
shared_nameconv2d_54/bias
m
"conv2d_54/bias/Read/ReadVariableOpReadVariableOpconv2d_54/bias*
_output_shapes
:-*
dtype0
}
dense_156/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	-?*!
shared_namedense_156/kernel
v
$dense_156/kernel/Read/ReadVariableOpReadVariableOpdense_156/kernel*
_output_shapes
:	-?*
dtype0
u
dense_156/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_156/bias
n
"dense_156/bias/Read/ReadVariableOpReadVariableOpdense_156/bias*
_output_shapes	
:?*
dtype0
}
dense_157/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*!
shared_namedense_157/kernel
v
$dense_157/kernel/Read/ReadVariableOpReadVariableOpdense_157/kernel*
_output_shapes
:	?d*
dtype0
t
dense_157/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_157/bias
m
"dense_157/bias/Read/ReadVariableOpReadVariableOpdense_157/bias*
_output_shapes
:d*
dtype0
|
dense_158/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*!
shared_namedense_158/kernel
u
$dense_158/kernel/Read/ReadVariableOpReadVariableOpdense_158/kernel*
_output_shapes

:d2*
dtype0
t
dense_158/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_158/bias
m
"dense_158/bias/Read/ReadVariableOpReadVariableOpdense_158/bias*
_output_shapes
:2*
dtype0
|
dense_159/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*!
shared_namedense_159/kernel
u
$dense_159/kernel/Read/ReadVariableOpReadVariableOpdense_159/kernel*
_output_shapes

:2*
dtype0
t
dense_159/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_159/bias
m
"dense_159/bias/Read/ReadVariableOpReadVariableOpdense_159/bias*
_output_shapes
:*
dtype0
|
dense_160/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_160/kernel
u
$dense_160/kernel/Read/ReadVariableOpReadVariableOpdense_160/kernel*
_output_shapes

:*
dtype0
t
dense_160/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_160/bias
m
"dense_160/bias/Read/ReadVariableOpReadVariableOpdense_160/bias*
_output_shapes
:*
dtype0
|
dense_161/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_161/kernel
u
$dense_161/kernel/Read/ReadVariableOpReadVariableOpdense_161/kernel*
_output_shapes

:*
dtype0
t
dense_161/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_161/bias
m
"dense_161/bias/Read/ReadVariableOpReadVariableOpdense_161/bias*
_output_shapes
:*
dtype0

NoOpNoOp
?,
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?+
value?+B?+ B?+
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
R
!	variables
"trainable_variables
#regularization_losses
$	keras_api
h

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
h

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
h

1kernel
2bias
3	variables
4trainable_variables
5regularization_losses
6	keras_api
h

7kernel
8bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
h

=kernel
>bias
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
h

Ckernel
Dbias
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
 
v
0
1
2
3
%4
&5
+6
,7
18
29
710
811
=12
>13
C14
D15
v
0
1
2
3
%4
&5
+6
,7
18
29
710
811
=12
>13
C14
D15
 
?
	variables
Inon_trainable_variables

Jlayers
Kmetrics
trainable_variables
Llayer_metrics
regularization_losses
Mlayer_regularization_losses
 
\Z
VARIABLE_VALUEconv2d_53/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_53/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Nnon_trainable_variables
	variables

Olayers
Pmetrics
trainable_variables
Qlayer_metrics
regularization_losses
Rlayer_regularization_losses
 
 
 
?
Snon_trainable_variables
	variables

Tlayers
Umetrics
trainable_variables
Vlayer_metrics
regularization_losses
Wlayer_regularization_losses
\Z
VARIABLE_VALUEconv2d_54/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_54/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Xnon_trainable_variables
	variables

Ylayers
Zmetrics
trainable_variables
[layer_metrics
regularization_losses
\layer_regularization_losses
 
 
 
?
]non_trainable_variables
!	variables

^layers
_metrics
"trainable_variables
`layer_metrics
#regularization_losses
alayer_regularization_losses
\Z
VARIABLE_VALUEdense_156/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_156/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

%0
&1

%0
&1
 
?
bnon_trainable_variables
'	variables

clayers
dmetrics
(trainable_variables
elayer_metrics
)regularization_losses
flayer_regularization_losses
\Z
VARIABLE_VALUEdense_157/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_157/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1

+0
,1
 
?
gnon_trainable_variables
-	variables

hlayers
imetrics
.trainable_variables
jlayer_metrics
/regularization_losses
klayer_regularization_losses
\Z
VARIABLE_VALUEdense_158/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_158/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

10
21

10
21
 
?
lnon_trainable_variables
3	variables

mlayers
nmetrics
4trainable_variables
olayer_metrics
5regularization_losses
player_regularization_losses
\Z
VARIABLE_VALUEdense_159/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_159/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

70
81

70
81
 
?
qnon_trainable_variables
9	variables

rlayers
smetrics
:trainable_variables
tlayer_metrics
;regularization_losses
ulayer_regularization_losses
\Z
VARIABLE_VALUEdense_160/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_160/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

=0
>1

=0
>1
 
?
vnon_trainable_variables
?	variables

wlayers
xmetrics
@trainable_variables
ylayer_metrics
Aregularization_losses
zlayer_regularization_losses
\Z
VARIABLE_VALUEdense_161/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_161/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

C0
D1

C0
D1
 
?
{non_trainable_variables
E	variables

|layers
}metrics
Ftrainable_variables
~layer_metrics
Gregularization_losses
layer_regularization_losses
 
F
0
1
2
3
4
5
6
7
	8

9
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
?
serving_default_input_36Placeholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_36conv2d_53/kernelconv2d_53/biasconv2d_54/kernelconv2d_54/biasdense_156/kerneldense_156/biasdense_157/kerneldense_157/biasdense_158/kerneldense_158/biasdense_159/kerneldense_159/biasdense_160/kerneldense_160/biasdense_161/kerneldense_161/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_213915
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_53/kernel/Read/ReadVariableOp"conv2d_53/bias/Read/ReadVariableOp$conv2d_54/kernel/Read/ReadVariableOp"conv2d_54/bias/Read/ReadVariableOp$dense_156/kernel/Read/ReadVariableOp"dense_156/bias/Read/ReadVariableOp$dense_157/kernel/Read/ReadVariableOp"dense_157/bias/Read/ReadVariableOp$dense_158/kernel/Read/ReadVariableOp"dense_158/bias/Read/ReadVariableOp$dense_159/kernel/Read/ReadVariableOp"dense_159/bias/Read/ReadVariableOp$dense_160/kernel/Read/ReadVariableOp"dense_160/bias/Read/ReadVariableOp$dense_161/kernel/Read/ReadVariableOp"dense_161/bias/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_214704
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_53/kernelconv2d_53/biasconv2d_54/kernelconv2d_54/biasdense_156/kerneldense_156/biasdense_157/kerneldense_157/biasdense_158/kerneldense_158/biasdense_159/kerneldense_159/biasdense_160/kerneldense_160/biasdense_161/kerneldense_161/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_214762??
??
?
I__inference_sequential_38_layer_call_and_return_conditional_losses_214097

inputs,
(conv2d_53_conv2d_readvariableop_resource-
)conv2d_53_biasadd_readvariableop_resource,
(conv2d_54_conv2d_readvariableop_resource-
)conv2d_54_biasadd_readvariableop_resource/
+dense_156_tensordot_readvariableop_resource-
)dense_156_biasadd_readvariableop_resource/
+dense_157_tensordot_readvariableop_resource-
)dense_157_biasadd_readvariableop_resource/
+dense_158_tensordot_readvariableop_resource-
)dense_158_biasadd_readvariableop_resource/
+dense_159_tensordot_readvariableop_resource-
)dense_159_biasadd_readvariableop_resource/
+dense_160_tensordot_readvariableop_resource-
)dense_160_biasadd_readvariableop_resource/
+dense_161_tensordot_readvariableop_resource-
)dense_161_biasadd_readvariableop_resource
identity?? conv2d_53/BiasAdd/ReadVariableOp?conv2d_53/Conv2D/ReadVariableOp? conv2d_54/BiasAdd/ReadVariableOp?conv2d_54/Conv2D/ReadVariableOp? dense_156/BiasAdd/ReadVariableOp?"dense_156/Tensordot/ReadVariableOp? dense_157/BiasAdd/ReadVariableOp?"dense_157/Tensordot/ReadVariableOp? dense_158/BiasAdd/ReadVariableOp?"dense_158/Tensordot/ReadVariableOp? dense_159/BiasAdd/ReadVariableOp?"dense_159/Tensordot/ReadVariableOp? dense_160/BiasAdd/ReadVariableOp?"dense_160/Tensordot/ReadVariableOp? dense_161/BiasAdd/ReadVariableOp?"dense_161/Tensordot/ReadVariableOp?
conv2d_53/Conv2D/ReadVariableOpReadVariableOp(conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02!
conv2d_53/Conv2D/ReadVariableOp?
conv2d_53/Conv2DConv2Dinputs'conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
conv2d_53/Conv2D?
 conv2d_53/BiasAdd/ReadVariableOpReadVariableOp)conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_53/BiasAdd/ReadVariableOp?
conv2d_53/BiasAddBiasAddconv2d_53/Conv2D:output:0(conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d_53/BiasAdd~
conv2d_53/ReluReluconv2d_53/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d_53/Relu?
max_pooling2d_52/MaxPoolMaxPoolconv2d_53/Relu:activations:0*/
_output_shapes
:?????????
*
ksize
*
paddingVALID*
strides
2
max_pooling2d_52/MaxPool?
conv2d_54/Conv2D/ReadVariableOpReadVariableOp(conv2d_54_conv2d_readvariableop_resource*&
_output_shapes
:-*
dtype02!
conv2d_54/Conv2D/ReadVariableOp?
conv2d_54/Conv2DConv2D!max_pooling2d_52/MaxPool:output:0'conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-*
paddingVALID*
strides
2
conv2d_54/Conv2D?
 conv2d_54/BiasAdd/ReadVariableOpReadVariableOp)conv2d_54_biasadd_readvariableop_resource*
_output_shapes
:-*
dtype02"
 conv2d_54/BiasAdd/ReadVariableOp?
conv2d_54/BiasAddBiasAddconv2d_54/Conv2D:output:0(conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-2
conv2d_54/BiasAdd~
conv2d_54/ReluReluconv2d_54/BiasAdd:output:0*
T0*/
_output_shapes
:?????????-2
conv2d_54/Relu?
max_pooling2d_53/MaxPoolMaxPoolconv2d_54/Relu:activations:0*/
_output_shapes
:?????????-*
ksize
*
paddingVALID*
strides
2
max_pooling2d_53/MaxPool?
"dense_156/Tensordot/ReadVariableOpReadVariableOp+dense_156_tensordot_readvariableop_resource*
_output_shapes
:	-?*
dtype02$
"dense_156/Tensordot/ReadVariableOp~
dense_156/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_156/Tensordot/axes?
dense_156/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
dense_156/Tensordot/free?
dense_156/Tensordot/ShapeShape!max_pooling2d_53/MaxPool:output:0*
T0*
_output_shapes
:2
dense_156/Tensordot/Shape?
!dense_156/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_156/Tensordot/GatherV2/axis?
dense_156/Tensordot/GatherV2GatherV2"dense_156/Tensordot/Shape:output:0!dense_156/Tensordot/free:output:0*dense_156/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_156/Tensordot/GatherV2?
#dense_156/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_156/Tensordot/GatherV2_1/axis?
dense_156/Tensordot/GatherV2_1GatherV2"dense_156/Tensordot/Shape:output:0!dense_156/Tensordot/axes:output:0,dense_156/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_156/Tensordot/GatherV2_1?
dense_156/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_156/Tensordot/Const?
dense_156/Tensordot/ProdProd%dense_156/Tensordot/GatherV2:output:0"dense_156/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_156/Tensordot/Prod?
dense_156/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_156/Tensordot/Const_1?
dense_156/Tensordot/Prod_1Prod'dense_156/Tensordot/GatherV2_1:output:0$dense_156/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_156/Tensordot/Prod_1?
dense_156/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_156/Tensordot/concat/axis?
dense_156/Tensordot/concatConcatV2!dense_156/Tensordot/free:output:0!dense_156/Tensordot/axes:output:0(dense_156/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_156/Tensordot/concat?
dense_156/Tensordot/stackPack!dense_156/Tensordot/Prod:output:0#dense_156/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_156/Tensordot/stack?
dense_156/Tensordot/transpose	Transpose!max_pooling2d_53/MaxPool:output:0#dense_156/Tensordot/concat:output:0*
T0*/
_output_shapes
:?????????-2
dense_156/Tensordot/transpose?
dense_156/Tensordot/ReshapeReshape!dense_156/Tensordot/transpose:y:0"dense_156/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_156/Tensordot/Reshape?
dense_156/Tensordot/MatMulMatMul$dense_156/Tensordot/Reshape:output:0*dense_156/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_156/Tensordot/MatMul?
dense_156/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
dense_156/Tensordot/Const_2?
!dense_156/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_156/Tensordot/concat_1/axis?
dense_156/Tensordot/concat_1ConcatV2%dense_156/Tensordot/GatherV2:output:0$dense_156/Tensordot/Const_2:output:0*dense_156/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_156/Tensordot/concat_1?
dense_156/TensordotReshape$dense_156/Tensordot/MatMul:product:0%dense_156/Tensordot/concat_1:output:0*
T0*0
_output_shapes
:??????????2
dense_156/Tensordot?
 dense_156/BiasAdd/ReadVariableOpReadVariableOp)dense_156_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_156/BiasAdd/ReadVariableOp?
dense_156/BiasAddBiasAdddense_156/Tensordot:output:0(dense_156/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
dense_156/BiasAdd
dense_156/ReluReludense_156/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
dense_156/Relu?
"dense_157/Tensordot/ReadVariableOpReadVariableOp+dense_157_tensordot_readvariableop_resource*
_output_shapes
:	?d*
dtype02$
"dense_157/Tensordot/ReadVariableOp~
dense_157/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_157/Tensordot/axes?
dense_157/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
dense_157/Tensordot/free?
dense_157/Tensordot/ShapeShapedense_156/Relu:activations:0*
T0*
_output_shapes
:2
dense_157/Tensordot/Shape?
!dense_157/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_157/Tensordot/GatherV2/axis?
dense_157/Tensordot/GatherV2GatherV2"dense_157/Tensordot/Shape:output:0!dense_157/Tensordot/free:output:0*dense_157/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_157/Tensordot/GatherV2?
#dense_157/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_157/Tensordot/GatherV2_1/axis?
dense_157/Tensordot/GatherV2_1GatherV2"dense_157/Tensordot/Shape:output:0!dense_157/Tensordot/axes:output:0,dense_157/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_157/Tensordot/GatherV2_1?
dense_157/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_157/Tensordot/Const?
dense_157/Tensordot/ProdProd%dense_157/Tensordot/GatherV2:output:0"dense_157/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_157/Tensordot/Prod?
dense_157/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_157/Tensordot/Const_1?
dense_157/Tensordot/Prod_1Prod'dense_157/Tensordot/GatherV2_1:output:0$dense_157/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_157/Tensordot/Prod_1?
dense_157/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_157/Tensordot/concat/axis?
dense_157/Tensordot/concatConcatV2!dense_157/Tensordot/free:output:0!dense_157/Tensordot/axes:output:0(dense_157/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_157/Tensordot/concat?
dense_157/Tensordot/stackPack!dense_157/Tensordot/Prod:output:0#dense_157/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_157/Tensordot/stack?
dense_157/Tensordot/transpose	Transposedense_156/Relu:activations:0#dense_157/Tensordot/concat:output:0*
T0*0
_output_shapes
:??????????2
dense_157/Tensordot/transpose?
dense_157/Tensordot/ReshapeReshape!dense_157/Tensordot/transpose:y:0"dense_157/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_157/Tensordot/Reshape?
dense_157/Tensordot/MatMulMatMul$dense_157/Tensordot/Reshape:output:0*dense_157/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_157/Tensordot/MatMul?
dense_157/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
dense_157/Tensordot/Const_2?
!dense_157/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_157/Tensordot/concat_1/axis?
dense_157/Tensordot/concat_1ConcatV2%dense_157/Tensordot/GatherV2:output:0$dense_157/Tensordot/Const_2:output:0*dense_157/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_157/Tensordot/concat_1?
dense_157/TensordotReshape$dense_157/Tensordot/MatMul:product:0%dense_157/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:?????????d2
dense_157/Tensordot?
 dense_157/BiasAdd/ReadVariableOpReadVariableOp)dense_157_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_157/BiasAdd/ReadVariableOp?
dense_157/BiasAddBiasAdddense_157/Tensordot:output:0(dense_157/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????d2
dense_157/BiasAdd~
dense_157/ReluReludense_157/BiasAdd:output:0*
T0*/
_output_shapes
:?????????d2
dense_157/Relu?
"dense_158/Tensordot/ReadVariableOpReadVariableOp+dense_158_tensordot_readvariableop_resource*
_output_shapes

:d2*
dtype02$
"dense_158/Tensordot/ReadVariableOp~
dense_158/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_158/Tensordot/axes?
dense_158/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
dense_158/Tensordot/free?
dense_158/Tensordot/ShapeShapedense_157/Relu:activations:0*
T0*
_output_shapes
:2
dense_158/Tensordot/Shape?
!dense_158/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_158/Tensordot/GatherV2/axis?
dense_158/Tensordot/GatherV2GatherV2"dense_158/Tensordot/Shape:output:0!dense_158/Tensordot/free:output:0*dense_158/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_158/Tensordot/GatherV2?
#dense_158/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_158/Tensordot/GatherV2_1/axis?
dense_158/Tensordot/GatherV2_1GatherV2"dense_158/Tensordot/Shape:output:0!dense_158/Tensordot/axes:output:0,dense_158/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_158/Tensordot/GatherV2_1?
dense_158/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_158/Tensordot/Const?
dense_158/Tensordot/ProdProd%dense_158/Tensordot/GatherV2:output:0"dense_158/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_158/Tensordot/Prod?
dense_158/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_158/Tensordot/Const_1?
dense_158/Tensordot/Prod_1Prod'dense_158/Tensordot/GatherV2_1:output:0$dense_158/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_158/Tensordot/Prod_1?
dense_158/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_158/Tensordot/concat/axis?
dense_158/Tensordot/concatConcatV2!dense_158/Tensordot/free:output:0!dense_158/Tensordot/axes:output:0(dense_158/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_158/Tensordot/concat?
dense_158/Tensordot/stackPack!dense_158/Tensordot/Prod:output:0#dense_158/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_158/Tensordot/stack?
dense_158/Tensordot/transpose	Transposedense_157/Relu:activations:0#dense_158/Tensordot/concat:output:0*
T0*/
_output_shapes
:?????????d2
dense_158/Tensordot/transpose?
dense_158/Tensordot/ReshapeReshape!dense_158/Tensordot/transpose:y:0"dense_158/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_158/Tensordot/Reshape?
dense_158/Tensordot/MatMulMatMul$dense_158/Tensordot/Reshape:output:0*dense_158/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_158/Tensordot/MatMul?
dense_158/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:22
dense_158/Tensordot/Const_2?
!dense_158/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_158/Tensordot/concat_1/axis?
dense_158/Tensordot/concat_1ConcatV2%dense_158/Tensordot/GatherV2:output:0$dense_158/Tensordot/Const_2:output:0*dense_158/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_158/Tensordot/concat_1?
dense_158/TensordotReshape$dense_158/Tensordot/MatMul:product:0%dense_158/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:?????????22
dense_158/Tensordot?
 dense_158/BiasAdd/ReadVariableOpReadVariableOp)dense_158_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02"
 dense_158/BiasAdd/ReadVariableOp?
dense_158/BiasAddBiasAdddense_158/Tensordot:output:0(dense_158/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????22
dense_158/BiasAdd~
dense_158/ReluReludense_158/BiasAdd:output:0*
T0*/
_output_shapes
:?????????22
dense_158/Relu?
"dense_159/Tensordot/ReadVariableOpReadVariableOp+dense_159_tensordot_readvariableop_resource*
_output_shapes

:2*
dtype02$
"dense_159/Tensordot/ReadVariableOp~
dense_159/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_159/Tensordot/axes?
dense_159/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
dense_159/Tensordot/free?
dense_159/Tensordot/ShapeShapedense_158/Relu:activations:0*
T0*
_output_shapes
:2
dense_159/Tensordot/Shape?
!dense_159/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_159/Tensordot/GatherV2/axis?
dense_159/Tensordot/GatherV2GatherV2"dense_159/Tensordot/Shape:output:0!dense_159/Tensordot/free:output:0*dense_159/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_159/Tensordot/GatherV2?
#dense_159/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_159/Tensordot/GatherV2_1/axis?
dense_159/Tensordot/GatherV2_1GatherV2"dense_159/Tensordot/Shape:output:0!dense_159/Tensordot/axes:output:0,dense_159/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_159/Tensordot/GatherV2_1?
dense_159/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_159/Tensordot/Const?
dense_159/Tensordot/ProdProd%dense_159/Tensordot/GatherV2:output:0"dense_159/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_159/Tensordot/Prod?
dense_159/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_159/Tensordot/Const_1?
dense_159/Tensordot/Prod_1Prod'dense_159/Tensordot/GatherV2_1:output:0$dense_159/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_159/Tensordot/Prod_1?
dense_159/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_159/Tensordot/concat/axis?
dense_159/Tensordot/concatConcatV2!dense_159/Tensordot/free:output:0!dense_159/Tensordot/axes:output:0(dense_159/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_159/Tensordot/concat?
dense_159/Tensordot/stackPack!dense_159/Tensordot/Prod:output:0#dense_159/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_159/Tensordot/stack?
dense_159/Tensordot/transpose	Transposedense_158/Relu:activations:0#dense_159/Tensordot/concat:output:0*
T0*/
_output_shapes
:?????????22
dense_159/Tensordot/transpose?
dense_159/Tensordot/ReshapeReshape!dense_159/Tensordot/transpose:y:0"dense_159/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_159/Tensordot/Reshape?
dense_159/Tensordot/MatMulMatMul$dense_159/Tensordot/Reshape:output:0*dense_159/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_159/Tensordot/MatMul?
dense_159/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_159/Tensordot/Const_2?
!dense_159/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_159/Tensordot/concat_1/axis?
dense_159/Tensordot/concat_1ConcatV2%dense_159/Tensordot/GatherV2:output:0$dense_159/Tensordot/Const_2:output:0*dense_159/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_159/Tensordot/concat_1?
dense_159/TensordotReshape$dense_159/Tensordot/MatMul:product:0%dense_159/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:?????????2
dense_159/Tensordot?
 dense_159/BiasAdd/ReadVariableOpReadVariableOp)dense_159_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_159/BiasAdd/ReadVariableOp?
dense_159/BiasAddBiasAdddense_159/Tensordot:output:0(dense_159/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
dense_159/BiasAdd~
dense_159/ReluReludense_159/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
dense_159/Relu?
"dense_160/Tensordot/ReadVariableOpReadVariableOp+dense_160_tensordot_readvariableop_resource*
_output_shapes

:*
dtype02$
"dense_160/Tensordot/ReadVariableOp~
dense_160/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_160/Tensordot/axes?
dense_160/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
dense_160/Tensordot/free?
dense_160/Tensordot/ShapeShapedense_159/Relu:activations:0*
T0*
_output_shapes
:2
dense_160/Tensordot/Shape?
!dense_160/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_160/Tensordot/GatherV2/axis?
dense_160/Tensordot/GatherV2GatherV2"dense_160/Tensordot/Shape:output:0!dense_160/Tensordot/free:output:0*dense_160/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_160/Tensordot/GatherV2?
#dense_160/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_160/Tensordot/GatherV2_1/axis?
dense_160/Tensordot/GatherV2_1GatherV2"dense_160/Tensordot/Shape:output:0!dense_160/Tensordot/axes:output:0,dense_160/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_160/Tensordot/GatherV2_1?
dense_160/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_160/Tensordot/Const?
dense_160/Tensordot/ProdProd%dense_160/Tensordot/GatherV2:output:0"dense_160/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_160/Tensordot/Prod?
dense_160/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_160/Tensordot/Const_1?
dense_160/Tensordot/Prod_1Prod'dense_160/Tensordot/GatherV2_1:output:0$dense_160/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_160/Tensordot/Prod_1?
dense_160/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_160/Tensordot/concat/axis?
dense_160/Tensordot/concatConcatV2!dense_160/Tensordot/free:output:0!dense_160/Tensordot/axes:output:0(dense_160/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_160/Tensordot/concat?
dense_160/Tensordot/stackPack!dense_160/Tensordot/Prod:output:0#dense_160/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_160/Tensordot/stack?
dense_160/Tensordot/transpose	Transposedense_159/Relu:activations:0#dense_160/Tensordot/concat:output:0*
T0*/
_output_shapes
:?????????2
dense_160/Tensordot/transpose?
dense_160/Tensordot/ReshapeReshape!dense_160/Tensordot/transpose:y:0"dense_160/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_160/Tensordot/Reshape?
dense_160/Tensordot/MatMulMatMul$dense_160/Tensordot/Reshape:output:0*dense_160/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_160/Tensordot/MatMul?
dense_160/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_160/Tensordot/Const_2?
!dense_160/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_160/Tensordot/concat_1/axis?
dense_160/Tensordot/concat_1ConcatV2%dense_160/Tensordot/GatherV2:output:0$dense_160/Tensordot/Const_2:output:0*dense_160/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_160/Tensordot/concat_1?
dense_160/TensordotReshape$dense_160/Tensordot/MatMul:product:0%dense_160/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:?????????2
dense_160/Tensordot?
 dense_160/BiasAdd/ReadVariableOpReadVariableOp)dense_160_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_160/BiasAdd/ReadVariableOp?
dense_160/BiasAddBiasAdddense_160/Tensordot:output:0(dense_160/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
dense_160/BiasAdd~
dense_160/ReluReludense_160/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
dense_160/Relu?
"dense_161/Tensordot/ReadVariableOpReadVariableOp+dense_161_tensordot_readvariableop_resource*
_output_shapes

:*
dtype02$
"dense_161/Tensordot/ReadVariableOp~
dense_161/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_161/Tensordot/axes?
dense_161/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
dense_161/Tensordot/free?
dense_161/Tensordot/ShapeShapedense_160/Relu:activations:0*
T0*
_output_shapes
:2
dense_161/Tensordot/Shape?
!dense_161/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_161/Tensordot/GatherV2/axis?
dense_161/Tensordot/GatherV2GatherV2"dense_161/Tensordot/Shape:output:0!dense_161/Tensordot/free:output:0*dense_161/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_161/Tensordot/GatherV2?
#dense_161/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_161/Tensordot/GatherV2_1/axis?
dense_161/Tensordot/GatherV2_1GatherV2"dense_161/Tensordot/Shape:output:0!dense_161/Tensordot/axes:output:0,dense_161/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_161/Tensordot/GatherV2_1?
dense_161/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_161/Tensordot/Const?
dense_161/Tensordot/ProdProd%dense_161/Tensordot/GatherV2:output:0"dense_161/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_161/Tensordot/Prod?
dense_161/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_161/Tensordot/Const_1?
dense_161/Tensordot/Prod_1Prod'dense_161/Tensordot/GatherV2_1:output:0$dense_161/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_161/Tensordot/Prod_1?
dense_161/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_161/Tensordot/concat/axis?
dense_161/Tensordot/concatConcatV2!dense_161/Tensordot/free:output:0!dense_161/Tensordot/axes:output:0(dense_161/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_161/Tensordot/concat?
dense_161/Tensordot/stackPack!dense_161/Tensordot/Prod:output:0#dense_161/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_161/Tensordot/stack?
dense_161/Tensordot/transpose	Transposedense_160/Relu:activations:0#dense_161/Tensordot/concat:output:0*
T0*/
_output_shapes
:?????????2
dense_161/Tensordot/transpose?
dense_161/Tensordot/ReshapeReshape!dense_161/Tensordot/transpose:y:0"dense_161/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_161/Tensordot/Reshape?
dense_161/Tensordot/MatMulMatMul$dense_161/Tensordot/Reshape:output:0*dense_161/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_161/Tensordot/MatMul?
dense_161/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_161/Tensordot/Const_2?
!dense_161/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_161/Tensordot/concat_1/axis?
dense_161/Tensordot/concat_1ConcatV2%dense_161/Tensordot/GatherV2:output:0$dense_161/Tensordot/Const_2:output:0*dense_161/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_161/Tensordot/concat_1?
dense_161/TensordotReshape$dense_161/Tensordot/MatMul:product:0%dense_161/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:?????????2
dense_161/Tensordot?
 dense_161/BiasAdd/ReadVariableOpReadVariableOp)dense_161_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_161/BiasAdd/ReadVariableOp?
dense_161/BiasAddBiasAdddense_161/Tensordot:output:0(dense_161/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
dense_161/BiasAdd~
dense_161/ReluReludense_161/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
dense_161/Relu?
IdentityIdentitydense_161/Relu:activations:0!^conv2d_53/BiasAdd/ReadVariableOp ^conv2d_53/Conv2D/ReadVariableOp!^conv2d_54/BiasAdd/ReadVariableOp ^conv2d_54/Conv2D/ReadVariableOp!^dense_156/BiasAdd/ReadVariableOp#^dense_156/Tensordot/ReadVariableOp!^dense_157/BiasAdd/ReadVariableOp#^dense_157/Tensordot/ReadVariableOp!^dense_158/BiasAdd/ReadVariableOp#^dense_158/Tensordot/ReadVariableOp!^dense_159/BiasAdd/ReadVariableOp#^dense_159/Tensordot/ReadVariableOp!^dense_160/BiasAdd/ReadVariableOp#^dense_160/Tensordot/ReadVariableOp!^dense_161/BiasAdd/ReadVariableOp#^dense_161/Tensordot/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*n
_input_shapes]
[:?????????::::::::::::::::2D
 conv2d_53/BiasAdd/ReadVariableOp conv2d_53/BiasAdd/ReadVariableOp2B
conv2d_53/Conv2D/ReadVariableOpconv2d_53/Conv2D/ReadVariableOp2D
 conv2d_54/BiasAdd/ReadVariableOp conv2d_54/BiasAdd/ReadVariableOp2B
conv2d_54/Conv2D/ReadVariableOpconv2d_54/Conv2D/ReadVariableOp2D
 dense_156/BiasAdd/ReadVariableOp dense_156/BiasAdd/ReadVariableOp2H
"dense_156/Tensordot/ReadVariableOp"dense_156/Tensordot/ReadVariableOp2D
 dense_157/BiasAdd/ReadVariableOp dense_157/BiasAdd/ReadVariableOp2H
"dense_157/Tensordot/ReadVariableOp"dense_157/Tensordot/ReadVariableOp2D
 dense_158/BiasAdd/ReadVariableOp dense_158/BiasAdd/ReadVariableOp2H
"dense_158/Tensordot/ReadVariableOp"dense_158/Tensordot/ReadVariableOp2D
 dense_159/BiasAdd/ReadVariableOp dense_159/BiasAdd/ReadVariableOp2H
"dense_159/Tensordot/ReadVariableOp"dense_159/Tensordot/ReadVariableOp2D
 dense_160/BiasAdd/ReadVariableOp dense_160/BiasAdd/ReadVariableOp2H
"dense_160/Tensordot/ReadVariableOp"dense_160/Tensordot/ReadVariableOp2D
 dense_161/BiasAdd/ReadVariableOp dense_161/BiasAdd/ReadVariableOp2H
"dense_161/Tensordot/ReadVariableOp"dense_161/Tensordot/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_53_layer_call_and_return_conditional_losses_213335

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
? 
?
E__inference_dense_156_layer_call_and_return_conditional_losses_213411

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	-?*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesu
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*/
_output_shapes
:?????????-2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*0
_output_shapes
:??????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????-::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:W S
/
_output_shapes
:?????????-
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_53_layer_call_fn_213320

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_2133142
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
??
?
!__inference__wrapped_model_213296
input_36:
6sequential_38_conv2d_53_conv2d_readvariableop_resource;
7sequential_38_conv2d_53_biasadd_readvariableop_resource:
6sequential_38_conv2d_54_conv2d_readvariableop_resource;
7sequential_38_conv2d_54_biasadd_readvariableop_resource=
9sequential_38_dense_156_tensordot_readvariableop_resource;
7sequential_38_dense_156_biasadd_readvariableop_resource=
9sequential_38_dense_157_tensordot_readvariableop_resource;
7sequential_38_dense_157_biasadd_readvariableop_resource=
9sequential_38_dense_158_tensordot_readvariableop_resource;
7sequential_38_dense_158_biasadd_readvariableop_resource=
9sequential_38_dense_159_tensordot_readvariableop_resource;
7sequential_38_dense_159_biasadd_readvariableop_resource=
9sequential_38_dense_160_tensordot_readvariableop_resource;
7sequential_38_dense_160_biasadd_readvariableop_resource=
9sequential_38_dense_161_tensordot_readvariableop_resource;
7sequential_38_dense_161_biasadd_readvariableop_resource
identity??.sequential_38/conv2d_53/BiasAdd/ReadVariableOp?-sequential_38/conv2d_53/Conv2D/ReadVariableOp?.sequential_38/conv2d_54/BiasAdd/ReadVariableOp?-sequential_38/conv2d_54/Conv2D/ReadVariableOp?.sequential_38/dense_156/BiasAdd/ReadVariableOp?0sequential_38/dense_156/Tensordot/ReadVariableOp?.sequential_38/dense_157/BiasAdd/ReadVariableOp?0sequential_38/dense_157/Tensordot/ReadVariableOp?.sequential_38/dense_158/BiasAdd/ReadVariableOp?0sequential_38/dense_158/Tensordot/ReadVariableOp?.sequential_38/dense_159/BiasAdd/ReadVariableOp?0sequential_38/dense_159/Tensordot/ReadVariableOp?.sequential_38/dense_160/BiasAdd/ReadVariableOp?0sequential_38/dense_160/Tensordot/ReadVariableOp?.sequential_38/dense_161/BiasAdd/ReadVariableOp?0sequential_38/dense_161/Tensordot/ReadVariableOp?
-sequential_38/conv2d_53/Conv2D/ReadVariableOpReadVariableOp6sequential_38_conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02/
-sequential_38/conv2d_53/Conv2D/ReadVariableOp?
sequential_38/conv2d_53/Conv2DConv2Dinput_365sequential_38/conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2 
sequential_38/conv2d_53/Conv2D?
.sequential_38/conv2d_53/BiasAdd/ReadVariableOpReadVariableOp7sequential_38_conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_38/conv2d_53/BiasAdd/ReadVariableOp?
sequential_38/conv2d_53/BiasAddBiasAdd'sequential_38/conv2d_53/Conv2D:output:06sequential_38/conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2!
sequential_38/conv2d_53/BiasAdd?
sequential_38/conv2d_53/ReluRelu(sequential_38/conv2d_53/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
sequential_38/conv2d_53/Relu?
&sequential_38/max_pooling2d_52/MaxPoolMaxPool*sequential_38/conv2d_53/Relu:activations:0*/
_output_shapes
:?????????
*
ksize
*
paddingVALID*
strides
2(
&sequential_38/max_pooling2d_52/MaxPool?
-sequential_38/conv2d_54/Conv2D/ReadVariableOpReadVariableOp6sequential_38_conv2d_54_conv2d_readvariableop_resource*&
_output_shapes
:-*
dtype02/
-sequential_38/conv2d_54/Conv2D/ReadVariableOp?
sequential_38/conv2d_54/Conv2DConv2D/sequential_38/max_pooling2d_52/MaxPool:output:05sequential_38/conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-*
paddingVALID*
strides
2 
sequential_38/conv2d_54/Conv2D?
.sequential_38/conv2d_54/BiasAdd/ReadVariableOpReadVariableOp7sequential_38_conv2d_54_biasadd_readvariableop_resource*
_output_shapes
:-*
dtype020
.sequential_38/conv2d_54/BiasAdd/ReadVariableOp?
sequential_38/conv2d_54/BiasAddBiasAdd'sequential_38/conv2d_54/Conv2D:output:06sequential_38/conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-2!
sequential_38/conv2d_54/BiasAdd?
sequential_38/conv2d_54/ReluRelu(sequential_38/conv2d_54/BiasAdd:output:0*
T0*/
_output_shapes
:?????????-2
sequential_38/conv2d_54/Relu?
&sequential_38/max_pooling2d_53/MaxPoolMaxPool*sequential_38/conv2d_54/Relu:activations:0*/
_output_shapes
:?????????-*
ksize
*
paddingVALID*
strides
2(
&sequential_38/max_pooling2d_53/MaxPool?
0sequential_38/dense_156/Tensordot/ReadVariableOpReadVariableOp9sequential_38_dense_156_tensordot_readvariableop_resource*
_output_shapes
:	-?*
dtype022
0sequential_38/dense_156/Tensordot/ReadVariableOp?
&sequential_38/dense_156/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2(
&sequential_38/dense_156/Tensordot/axes?
&sequential_38/dense_156/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_38/dense_156/Tensordot/free?
'sequential_38/dense_156/Tensordot/ShapeShape/sequential_38/max_pooling2d_53/MaxPool:output:0*
T0*
_output_shapes
:2)
'sequential_38/dense_156/Tensordot/Shape?
/sequential_38/dense_156/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_38/dense_156/Tensordot/GatherV2/axis?
*sequential_38/dense_156/Tensordot/GatherV2GatherV20sequential_38/dense_156/Tensordot/Shape:output:0/sequential_38/dense_156/Tensordot/free:output:08sequential_38/dense_156/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_38/dense_156/Tensordot/GatherV2?
1sequential_38/dense_156/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1sequential_38/dense_156/Tensordot/GatherV2_1/axis?
,sequential_38/dense_156/Tensordot/GatherV2_1GatherV20sequential_38/dense_156/Tensordot/Shape:output:0/sequential_38/dense_156/Tensordot/axes:output:0:sequential_38/dense_156/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2.
,sequential_38/dense_156/Tensordot/GatherV2_1?
'sequential_38/dense_156/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_38/dense_156/Tensordot/Const?
&sequential_38/dense_156/Tensordot/ProdProd3sequential_38/dense_156/Tensordot/GatherV2:output:00sequential_38/dense_156/Tensordot/Const:output:0*
T0*
_output_shapes
: 2(
&sequential_38/dense_156/Tensordot/Prod?
)sequential_38/dense_156/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_38/dense_156/Tensordot/Const_1?
(sequential_38/dense_156/Tensordot/Prod_1Prod5sequential_38/dense_156/Tensordot/GatherV2_1:output:02sequential_38/dense_156/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2*
(sequential_38/dense_156/Tensordot/Prod_1?
-sequential_38/dense_156/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_38/dense_156/Tensordot/concat/axis?
(sequential_38/dense_156/Tensordot/concatConcatV2/sequential_38/dense_156/Tensordot/free:output:0/sequential_38/dense_156/Tensordot/axes:output:06sequential_38/dense_156/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_38/dense_156/Tensordot/concat?
'sequential_38/dense_156/Tensordot/stackPack/sequential_38/dense_156/Tensordot/Prod:output:01sequential_38/dense_156/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2)
'sequential_38/dense_156/Tensordot/stack?
+sequential_38/dense_156/Tensordot/transpose	Transpose/sequential_38/max_pooling2d_53/MaxPool:output:01sequential_38/dense_156/Tensordot/concat:output:0*
T0*/
_output_shapes
:?????????-2-
+sequential_38/dense_156/Tensordot/transpose?
)sequential_38/dense_156/Tensordot/ReshapeReshape/sequential_38/dense_156/Tensordot/transpose:y:00sequential_38/dense_156/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2+
)sequential_38/dense_156/Tensordot/Reshape?
(sequential_38/dense_156/Tensordot/MatMulMatMul2sequential_38/dense_156/Tensordot/Reshape:output:08sequential_38/dense_156/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(sequential_38/dense_156/Tensordot/MatMul?
)sequential_38/dense_156/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2+
)sequential_38/dense_156/Tensordot/Const_2?
/sequential_38/dense_156/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_38/dense_156/Tensordot/concat_1/axis?
*sequential_38/dense_156/Tensordot/concat_1ConcatV23sequential_38/dense_156/Tensordot/GatherV2:output:02sequential_38/dense_156/Tensordot/Const_2:output:08sequential_38/dense_156/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2,
*sequential_38/dense_156/Tensordot/concat_1?
!sequential_38/dense_156/TensordotReshape2sequential_38/dense_156/Tensordot/MatMul:product:03sequential_38/dense_156/Tensordot/concat_1:output:0*
T0*0
_output_shapes
:??????????2#
!sequential_38/dense_156/Tensordot?
.sequential_38/dense_156/BiasAdd/ReadVariableOpReadVariableOp7sequential_38_dense_156_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_38/dense_156/BiasAdd/ReadVariableOp?
sequential_38/dense_156/BiasAddBiasAdd*sequential_38/dense_156/Tensordot:output:06sequential_38/dense_156/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2!
sequential_38/dense_156/BiasAdd?
sequential_38/dense_156/ReluRelu(sequential_38/dense_156/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
sequential_38/dense_156/Relu?
0sequential_38/dense_157/Tensordot/ReadVariableOpReadVariableOp9sequential_38_dense_157_tensordot_readvariableop_resource*
_output_shapes
:	?d*
dtype022
0sequential_38/dense_157/Tensordot/ReadVariableOp?
&sequential_38/dense_157/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2(
&sequential_38/dense_157/Tensordot/axes?
&sequential_38/dense_157/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_38/dense_157/Tensordot/free?
'sequential_38/dense_157/Tensordot/ShapeShape*sequential_38/dense_156/Relu:activations:0*
T0*
_output_shapes
:2)
'sequential_38/dense_157/Tensordot/Shape?
/sequential_38/dense_157/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_38/dense_157/Tensordot/GatherV2/axis?
*sequential_38/dense_157/Tensordot/GatherV2GatherV20sequential_38/dense_157/Tensordot/Shape:output:0/sequential_38/dense_157/Tensordot/free:output:08sequential_38/dense_157/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_38/dense_157/Tensordot/GatherV2?
1sequential_38/dense_157/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1sequential_38/dense_157/Tensordot/GatherV2_1/axis?
,sequential_38/dense_157/Tensordot/GatherV2_1GatherV20sequential_38/dense_157/Tensordot/Shape:output:0/sequential_38/dense_157/Tensordot/axes:output:0:sequential_38/dense_157/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2.
,sequential_38/dense_157/Tensordot/GatherV2_1?
'sequential_38/dense_157/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_38/dense_157/Tensordot/Const?
&sequential_38/dense_157/Tensordot/ProdProd3sequential_38/dense_157/Tensordot/GatherV2:output:00sequential_38/dense_157/Tensordot/Const:output:0*
T0*
_output_shapes
: 2(
&sequential_38/dense_157/Tensordot/Prod?
)sequential_38/dense_157/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_38/dense_157/Tensordot/Const_1?
(sequential_38/dense_157/Tensordot/Prod_1Prod5sequential_38/dense_157/Tensordot/GatherV2_1:output:02sequential_38/dense_157/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2*
(sequential_38/dense_157/Tensordot/Prod_1?
-sequential_38/dense_157/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_38/dense_157/Tensordot/concat/axis?
(sequential_38/dense_157/Tensordot/concatConcatV2/sequential_38/dense_157/Tensordot/free:output:0/sequential_38/dense_157/Tensordot/axes:output:06sequential_38/dense_157/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_38/dense_157/Tensordot/concat?
'sequential_38/dense_157/Tensordot/stackPack/sequential_38/dense_157/Tensordot/Prod:output:01sequential_38/dense_157/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2)
'sequential_38/dense_157/Tensordot/stack?
+sequential_38/dense_157/Tensordot/transpose	Transpose*sequential_38/dense_156/Relu:activations:01sequential_38/dense_157/Tensordot/concat:output:0*
T0*0
_output_shapes
:??????????2-
+sequential_38/dense_157/Tensordot/transpose?
)sequential_38/dense_157/Tensordot/ReshapeReshape/sequential_38/dense_157/Tensordot/transpose:y:00sequential_38/dense_157/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2+
)sequential_38/dense_157/Tensordot/Reshape?
(sequential_38/dense_157/Tensordot/MatMulMatMul2sequential_38/dense_157/Tensordot/Reshape:output:08sequential_38/dense_157/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2*
(sequential_38/dense_157/Tensordot/MatMul?
)sequential_38/dense_157/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2+
)sequential_38/dense_157/Tensordot/Const_2?
/sequential_38/dense_157/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_38/dense_157/Tensordot/concat_1/axis?
*sequential_38/dense_157/Tensordot/concat_1ConcatV23sequential_38/dense_157/Tensordot/GatherV2:output:02sequential_38/dense_157/Tensordot/Const_2:output:08sequential_38/dense_157/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2,
*sequential_38/dense_157/Tensordot/concat_1?
!sequential_38/dense_157/TensordotReshape2sequential_38/dense_157/Tensordot/MatMul:product:03sequential_38/dense_157/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:?????????d2#
!sequential_38/dense_157/Tensordot?
.sequential_38/dense_157/BiasAdd/ReadVariableOpReadVariableOp7sequential_38_dense_157_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype020
.sequential_38/dense_157/BiasAdd/ReadVariableOp?
sequential_38/dense_157/BiasAddBiasAdd*sequential_38/dense_157/Tensordot:output:06sequential_38/dense_157/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????d2!
sequential_38/dense_157/BiasAdd?
sequential_38/dense_157/ReluRelu(sequential_38/dense_157/BiasAdd:output:0*
T0*/
_output_shapes
:?????????d2
sequential_38/dense_157/Relu?
0sequential_38/dense_158/Tensordot/ReadVariableOpReadVariableOp9sequential_38_dense_158_tensordot_readvariableop_resource*
_output_shapes

:d2*
dtype022
0sequential_38/dense_158/Tensordot/ReadVariableOp?
&sequential_38/dense_158/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2(
&sequential_38/dense_158/Tensordot/axes?
&sequential_38/dense_158/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_38/dense_158/Tensordot/free?
'sequential_38/dense_158/Tensordot/ShapeShape*sequential_38/dense_157/Relu:activations:0*
T0*
_output_shapes
:2)
'sequential_38/dense_158/Tensordot/Shape?
/sequential_38/dense_158/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_38/dense_158/Tensordot/GatherV2/axis?
*sequential_38/dense_158/Tensordot/GatherV2GatherV20sequential_38/dense_158/Tensordot/Shape:output:0/sequential_38/dense_158/Tensordot/free:output:08sequential_38/dense_158/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_38/dense_158/Tensordot/GatherV2?
1sequential_38/dense_158/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1sequential_38/dense_158/Tensordot/GatherV2_1/axis?
,sequential_38/dense_158/Tensordot/GatherV2_1GatherV20sequential_38/dense_158/Tensordot/Shape:output:0/sequential_38/dense_158/Tensordot/axes:output:0:sequential_38/dense_158/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2.
,sequential_38/dense_158/Tensordot/GatherV2_1?
'sequential_38/dense_158/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_38/dense_158/Tensordot/Const?
&sequential_38/dense_158/Tensordot/ProdProd3sequential_38/dense_158/Tensordot/GatherV2:output:00sequential_38/dense_158/Tensordot/Const:output:0*
T0*
_output_shapes
: 2(
&sequential_38/dense_158/Tensordot/Prod?
)sequential_38/dense_158/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_38/dense_158/Tensordot/Const_1?
(sequential_38/dense_158/Tensordot/Prod_1Prod5sequential_38/dense_158/Tensordot/GatherV2_1:output:02sequential_38/dense_158/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2*
(sequential_38/dense_158/Tensordot/Prod_1?
-sequential_38/dense_158/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_38/dense_158/Tensordot/concat/axis?
(sequential_38/dense_158/Tensordot/concatConcatV2/sequential_38/dense_158/Tensordot/free:output:0/sequential_38/dense_158/Tensordot/axes:output:06sequential_38/dense_158/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_38/dense_158/Tensordot/concat?
'sequential_38/dense_158/Tensordot/stackPack/sequential_38/dense_158/Tensordot/Prod:output:01sequential_38/dense_158/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2)
'sequential_38/dense_158/Tensordot/stack?
+sequential_38/dense_158/Tensordot/transpose	Transpose*sequential_38/dense_157/Relu:activations:01sequential_38/dense_158/Tensordot/concat:output:0*
T0*/
_output_shapes
:?????????d2-
+sequential_38/dense_158/Tensordot/transpose?
)sequential_38/dense_158/Tensordot/ReshapeReshape/sequential_38/dense_158/Tensordot/transpose:y:00sequential_38/dense_158/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2+
)sequential_38/dense_158/Tensordot/Reshape?
(sequential_38/dense_158/Tensordot/MatMulMatMul2sequential_38/dense_158/Tensordot/Reshape:output:08sequential_38/dense_158/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22*
(sequential_38/dense_158/Tensordot/MatMul?
)sequential_38/dense_158/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:22+
)sequential_38/dense_158/Tensordot/Const_2?
/sequential_38/dense_158/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_38/dense_158/Tensordot/concat_1/axis?
*sequential_38/dense_158/Tensordot/concat_1ConcatV23sequential_38/dense_158/Tensordot/GatherV2:output:02sequential_38/dense_158/Tensordot/Const_2:output:08sequential_38/dense_158/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2,
*sequential_38/dense_158/Tensordot/concat_1?
!sequential_38/dense_158/TensordotReshape2sequential_38/dense_158/Tensordot/MatMul:product:03sequential_38/dense_158/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:?????????22#
!sequential_38/dense_158/Tensordot?
.sequential_38/dense_158/BiasAdd/ReadVariableOpReadVariableOp7sequential_38_dense_158_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype020
.sequential_38/dense_158/BiasAdd/ReadVariableOp?
sequential_38/dense_158/BiasAddBiasAdd*sequential_38/dense_158/Tensordot:output:06sequential_38/dense_158/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????22!
sequential_38/dense_158/BiasAdd?
sequential_38/dense_158/ReluRelu(sequential_38/dense_158/BiasAdd:output:0*
T0*/
_output_shapes
:?????????22
sequential_38/dense_158/Relu?
0sequential_38/dense_159/Tensordot/ReadVariableOpReadVariableOp9sequential_38_dense_159_tensordot_readvariableop_resource*
_output_shapes

:2*
dtype022
0sequential_38/dense_159/Tensordot/ReadVariableOp?
&sequential_38/dense_159/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2(
&sequential_38/dense_159/Tensordot/axes?
&sequential_38/dense_159/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_38/dense_159/Tensordot/free?
'sequential_38/dense_159/Tensordot/ShapeShape*sequential_38/dense_158/Relu:activations:0*
T0*
_output_shapes
:2)
'sequential_38/dense_159/Tensordot/Shape?
/sequential_38/dense_159/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_38/dense_159/Tensordot/GatherV2/axis?
*sequential_38/dense_159/Tensordot/GatherV2GatherV20sequential_38/dense_159/Tensordot/Shape:output:0/sequential_38/dense_159/Tensordot/free:output:08sequential_38/dense_159/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_38/dense_159/Tensordot/GatherV2?
1sequential_38/dense_159/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1sequential_38/dense_159/Tensordot/GatherV2_1/axis?
,sequential_38/dense_159/Tensordot/GatherV2_1GatherV20sequential_38/dense_159/Tensordot/Shape:output:0/sequential_38/dense_159/Tensordot/axes:output:0:sequential_38/dense_159/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2.
,sequential_38/dense_159/Tensordot/GatherV2_1?
'sequential_38/dense_159/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_38/dense_159/Tensordot/Const?
&sequential_38/dense_159/Tensordot/ProdProd3sequential_38/dense_159/Tensordot/GatherV2:output:00sequential_38/dense_159/Tensordot/Const:output:0*
T0*
_output_shapes
: 2(
&sequential_38/dense_159/Tensordot/Prod?
)sequential_38/dense_159/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_38/dense_159/Tensordot/Const_1?
(sequential_38/dense_159/Tensordot/Prod_1Prod5sequential_38/dense_159/Tensordot/GatherV2_1:output:02sequential_38/dense_159/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2*
(sequential_38/dense_159/Tensordot/Prod_1?
-sequential_38/dense_159/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_38/dense_159/Tensordot/concat/axis?
(sequential_38/dense_159/Tensordot/concatConcatV2/sequential_38/dense_159/Tensordot/free:output:0/sequential_38/dense_159/Tensordot/axes:output:06sequential_38/dense_159/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_38/dense_159/Tensordot/concat?
'sequential_38/dense_159/Tensordot/stackPack/sequential_38/dense_159/Tensordot/Prod:output:01sequential_38/dense_159/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2)
'sequential_38/dense_159/Tensordot/stack?
+sequential_38/dense_159/Tensordot/transpose	Transpose*sequential_38/dense_158/Relu:activations:01sequential_38/dense_159/Tensordot/concat:output:0*
T0*/
_output_shapes
:?????????22-
+sequential_38/dense_159/Tensordot/transpose?
)sequential_38/dense_159/Tensordot/ReshapeReshape/sequential_38/dense_159/Tensordot/transpose:y:00sequential_38/dense_159/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2+
)sequential_38/dense_159/Tensordot/Reshape?
(sequential_38/dense_159/Tensordot/MatMulMatMul2sequential_38/dense_159/Tensordot/Reshape:output:08sequential_38/dense_159/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2*
(sequential_38/dense_159/Tensordot/MatMul?
)sequential_38/dense_159/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_38/dense_159/Tensordot/Const_2?
/sequential_38/dense_159/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_38/dense_159/Tensordot/concat_1/axis?
*sequential_38/dense_159/Tensordot/concat_1ConcatV23sequential_38/dense_159/Tensordot/GatherV2:output:02sequential_38/dense_159/Tensordot/Const_2:output:08sequential_38/dense_159/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2,
*sequential_38/dense_159/Tensordot/concat_1?
!sequential_38/dense_159/TensordotReshape2sequential_38/dense_159/Tensordot/MatMul:product:03sequential_38/dense_159/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:?????????2#
!sequential_38/dense_159/Tensordot?
.sequential_38/dense_159/BiasAdd/ReadVariableOpReadVariableOp7sequential_38_dense_159_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_38/dense_159/BiasAdd/ReadVariableOp?
sequential_38/dense_159/BiasAddBiasAdd*sequential_38/dense_159/Tensordot:output:06sequential_38/dense_159/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2!
sequential_38/dense_159/BiasAdd?
sequential_38/dense_159/ReluRelu(sequential_38/dense_159/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
sequential_38/dense_159/Relu?
0sequential_38/dense_160/Tensordot/ReadVariableOpReadVariableOp9sequential_38_dense_160_tensordot_readvariableop_resource*
_output_shapes

:*
dtype022
0sequential_38/dense_160/Tensordot/ReadVariableOp?
&sequential_38/dense_160/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2(
&sequential_38/dense_160/Tensordot/axes?
&sequential_38/dense_160/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_38/dense_160/Tensordot/free?
'sequential_38/dense_160/Tensordot/ShapeShape*sequential_38/dense_159/Relu:activations:0*
T0*
_output_shapes
:2)
'sequential_38/dense_160/Tensordot/Shape?
/sequential_38/dense_160/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_38/dense_160/Tensordot/GatherV2/axis?
*sequential_38/dense_160/Tensordot/GatherV2GatherV20sequential_38/dense_160/Tensordot/Shape:output:0/sequential_38/dense_160/Tensordot/free:output:08sequential_38/dense_160/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_38/dense_160/Tensordot/GatherV2?
1sequential_38/dense_160/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1sequential_38/dense_160/Tensordot/GatherV2_1/axis?
,sequential_38/dense_160/Tensordot/GatherV2_1GatherV20sequential_38/dense_160/Tensordot/Shape:output:0/sequential_38/dense_160/Tensordot/axes:output:0:sequential_38/dense_160/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2.
,sequential_38/dense_160/Tensordot/GatherV2_1?
'sequential_38/dense_160/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_38/dense_160/Tensordot/Const?
&sequential_38/dense_160/Tensordot/ProdProd3sequential_38/dense_160/Tensordot/GatherV2:output:00sequential_38/dense_160/Tensordot/Const:output:0*
T0*
_output_shapes
: 2(
&sequential_38/dense_160/Tensordot/Prod?
)sequential_38/dense_160/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_38/dense_160/Tensordot/Const_1?
(sequential_38/dense_160/Tensordot/Prod_1Prod5sequential_38/dense_160/Tensordot/GatherV2_1:output:02sequential_38/dense_160/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2*
(sequential_38/dense_160/Tensordot/Prod_1?
-sequential_38/dense_160/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_38/dense_160/Tensordot/concat/axis?
(sequential_38/dense_160/Tensordot/concatConcatV2/sequential_38/dense_160/Tensordot/free:output:0/sequential_38/dense_160/Tensordot/axes:output:06sequential_38/dense_160/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_38/dense_160/Tensordot/concat?
'sequential_38/dense_160/Tensordot/stackPack/sequential_38/dense_160/Tensordot/Prod:output:01sequential_38/dense_160/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2)
'sequential_38/dense_160/Tensordot/stack?
+sequential_38/dense_160/Tensordot/transpose	Transpose*sequential_38/dense_159/Relu:activations:01sequential_38/dense_160/Tensordot/concat:output:0*
T0*/
_output_shapes
:?????????2-
+sequential_38/dense_160/Tensordot/transpose?
)sequential_38/dense_160/Tensordot/ReshapeReshape/sequential_38/dense_160/Tensordot/transpose:y:00sequential_38/dense_160/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2+
)sequential_38/dense_160/Tensordot/Reshape?
(sequential_38/dense_160/Tensordot/MatMulMatMul2sequential_38/dense_160/Tensordot/Reshape:output:08sequential_38/dense_160/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2*
(sequential_38/dense_160/Tensordot/MatMul?
)sequential_38/dense_160/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_38/dense_160/Tensordot/Const_2?
/sequential_38/dense_160/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_38/dense_160/Tensordot/concat_1/axis?
*sequential_38/dense_160/Tensordot/concat_1ConcatV23sequential_38/dense_160/Tensordot/GatherV2:output:02sequential_38/dense_160/Tensordot/Const_2:output:08sequential_38/dense_160/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2,
*sequential_38/dense_160/Tensordot/concat_1?
!sequential_38/dense_160/TensordotReshape2sequential_38/dense_160/Tensordot/MatMul:product:03sequential_38/dense_160/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:?????????2#
!sequential_38/dense_160/Tensordot?
.sequential_38/dense_160/BiasAdd/ReadVariableOpReadVariableOp7sequential_38_dense_160_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_38/dense_160/BiasAdd/ReadVariableOp?
sequential_38/dense_160/BiasAddBiasAdd*sequential_38/dense_160/Tensordot:output:06sequential_38/dense_160/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2!
sequential_38/dense_160/BiasAdd?
sequential_38/dense_160/ReluRelu(sequential_38/dense_160/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
sequential_38/dense_160/Relu?
0sequential_38/dense_161/Tensordot/ReadVariableOpReadVariableOp9sequential_38_dense_161_tensordot_readvariableop_resource*
_output_shapes

:*
dtype022
0sequential_38/dense_161/Tensordot/ReadVariableOp?
&sequential_38/dense_161/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2(
&sequential_38/dense_161/Tensordot/axes?
&sequential_38/dense_161/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_38/dense_161/Tensordot/free?
'sequential_38/dense_161/Tensordot/ShapeShape*sequential_38/dense_160/Relu:activations:0*
T0*
_output_shapes
:2)
'sequential_38/dense_161/Tensordot/Shape?
/sequential_38/dense_161/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_38/dense_161/Tensordot/GatherV2/axis?
*sequential_38/dense_161/Tensordot/GatherV2GatherV20sequential_38/dense_161/Tensordot/Shape:output:0/sequential_38/dense_161/Tensordot/free:output:08sequential_38/dense_161/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2,
*sequential_38/dense_161/Tensordot/GatherV2?
1sequential_38/dense_161/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 23
1sequential_38/dense_161/Tensordot/GatherV2_1/axis?
,sequential_38/dense_161/Tensordot/GatherV2_1GatherV20sequential_38/dense_161/Tensordot/Shape:output:0/sequential_38/dense_161/Tensordot/axes:output:0:sequential_38/dense_161/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2.
,sequential_38/dense_161/Tensordot/GatherV2_1?
'sequential_38/dense_161/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_38/dense_161/Tensordot/Const?
&sequential_38/dense_161/Tensordot/ProdProd3sequential_38/dense_161/Tensordot/GatherV2:output:00sequential_38/dense_161/Tensordot/Const:output:0*
T0*
_output_shapes
: 2(
&sequential_38/dense_161/Tensordot/Prod?
)sequential_38/dense_161/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_38/dense_161/Tensordot/Const_1?
(sequential_38/dense_161/Tensordot/Prod_1Prod5sequential_38/dense_161/Tensordot/GatherV2_1:output:02sequential_38/dense_161/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2*
(sequential_38/dense_161/Tensordot/Prod_1?
-sequential_38/dense_161/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_38/dense_161/Tensordot/concat/axis?
(sequential_38/dense_161/Tensordot/concatConcatV2/sequential_38/dense_161/Tensordot/free:output:0/sequential_38/dense_161/Tensordot/axes:output:06sequential_38/dense_161/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2*
(sequential_38/dense_161/Tensordot/concat?
'sequential_38/dense_161/Tensordot/stackPack/sequential_38/dense_161/Tensordot/Prod:output:01sequential_38/dense_161/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2)
'sequential_38/dense_161/Tensordot/stack?
+sequential_38/dense_161/Tensordot/transpose	Transpose*sequential_38/dense_160/Relu:activations:01sequential_38/dense_161/Tensordot/concat:output:0*
T0*/
_output_shapes
:?????????2-
+sequential_38/dense_161/Tensordot/transpose?
)sequential_38/dense_161/Tensordot/ReshapeReshape/sequential_38/dense_161/Tensordot/transpose:y:00sequential_38/dense_161/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2+
)sequential_38/dense_161/Tensordot/Reshape?
(sequential_38/dense_161/Tensordot/MatMulMatMul2sequential_38/dense_161/Tensordot/Reshape:output:08sequential_38/dense_161/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2*
(sequential_38/dense_161/Tensordot/MatMul?
)sequential_38/dense_161/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_38/dense_161/Tensordot/Const_2?
/sequential_38/dense_161/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_38/dense_161/Tensordot/concat_1/axis?
*sequential_38/dense_161/Tensordot/concat_1ConcatV23sequential_38/dense_161/Tensordot/GatherV2:output:02sequential_38/dense_161/Tensordot/Const_2:output:08sequential_38/dense_161/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2,
*sequential_38/dense_161/Tensordot/concat_1?
!sequential_38/dense_161/TensordotReshape2sequential_38/dense_161/Tensordot/MatMul:product:03sequential_38/dense_161/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:?????????2#
!sequential_38/dense_161/Tensordot?
.sequential_38/dense_161/BiasAdd/ReadVariableOpReadVariableOp7sequential_38_dense_161_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_38/dense_161/BiasAdd/ReadVariableOp?
sequential_38/dense_161/BiasAddBiasAdd*sequential_38/dense_161/Tensordot:output:06sequential_38/dense_161/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2!
sequential_38/dense_161/BiasAdd?
sequential_38/dense_161/ReluRelu(sequential_38/dense_161/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
sequential_38/dense_161/Relu?
IdentityIdentity*sequential_38/dense_161/Relu:activations:0/^sequential_38/conv2d_53/BiasAdd/ReadVariableOp.^sequential_38/conv2d_53/Conv2D/ReadVariableOp/^sequential_38/conv2d_54/BiasAdd/ReadVariableOp.^sequential_38/conv2d_54/Conv2D/ReadVariableOp/^sequential_38/dense_156/BiasAdd/ReadVariableOp1^sequential_38/dense_156/Tensordot/ReadVariableOp/^sequential_38/dense_157/BiasAdd/ReadVariableOp1^sequential_38/dense_157/Tensordot/ReadVariableOp/^sequential_38/dense_158/BiasAdd/ReadVariableOp1^sequential_38/dense_158/Tensordot/ReadVariableOp/^sequential_38/dense_159/BiasAdd/ReadVariableOp1^sequential_38/dense_159/Tensordot/ReadVariableOp/^sequential_38/dense_160/BiasAdd/ReadVariableOp1^sequential_38/dense_160/Tensordot/ReadVariableOp/^sequential_38/dense_161/BiasAdd/ReadVariableOp1^sequential_38/dense_161/Tensordot/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*n
_input_shapes]
[:?????????::::::::::::::::2`
.sequential_38/conv2d_53/BiasAdd/ReadVariableOp.sequential_38/conv2d_53/BiasAdd/ReadVariableOp2^
-sequential_38/conv2d_53/Conv2D/ReadVariableOp-sequential_38/conv2d_53/Conv2D/ReadVariableOp2`
.sequential_38/conv2d_54/BiasAdd/ReadVariableOp.sequential_38/conv2d_54/BiasAdd/ReadVariableOp2^
-sequential_38/conv2d_54/Conv2D/ReadVariableOp-sequential_38/conv2d_54/Conv2D/ReadVariableOp2`
.sequential_38/dense_156/BiasAdd/ReadVariableOp.sequential_38/dense_156/BiasAdd/ReadVariableOp2d
0sequential_38/dense_156/Tensordot/ReadVariableOp0sequential_38/dense_156/Tensordot/ReadVariableOp2`
.sequential_38/dense_157/BiasAdd/ReadVariableOp.sequential_38/dense_157/BiasAdd/ReadVariableOp2d
0sequential_38/dense_157/Tensordot/ReadVariableOp0sequential_38/dense_157/Tensordot/ReadVariableOp2`
.sequential_38/dense_158/BiasAdd/ReadVariableOp.sequential_38/dense_158/BiasAdd/ReadVariableOp2d
0sequential_38/dense_158/Tensordot/ReadVariableOp0sequential_38/dense_158/Tensordot/ReadVariableOp2`
.sequential_38/dense_159/BiasAdd/ReadVariableOp.sequential_38/dense_159/BiasAdd/ReadVariableOp2d
0sequential_38/dense_159/Tensordot/ReadVariableOp0sequential_38/dense_159/Tensordot/ReadVariableOp2`
.sequential_38/dense_160/BiasAdd/ReadVariableOp.sequential_38/dense_160/BiasAdd/ReadVariableOp2d
0sequential_38/dense_160/Tensordot/ReadVariableOp0sequential_38/dense_160/Tensordot/ReadVariableOp2`
.sequential_38/dense_161/BiasAdd/ReadVariableOp.sequential_38/dense_161/BiasAdd/ReadVariableOp2d
0sequential_38/dense_161/Tensordot/ReadVariableOp0sequential_38/dense_161/Tensordot/ReadVariableOp:Y U
/
_output_shapes
:?????????
"
_user_specified_name
input_36
? 
?
E__inference_dense_160_layer_call_and_return_conditional_losses_214584

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesu
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*/
_output_shapes
:?????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*/
_output_shapes
:?????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

*__inference_dense_158_layer_call_fn_214513

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_158_layer_call_and_return_conditional_losses_2135052
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????d::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????d
 
_user_specified_nameinputs
? 
?
E__inference_dense_158_layer_call_and_return_conditional_losses_213505

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:d2*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesu
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*/
_output_shapes
:?????????d2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:22
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*/
_output_shapes
:?????????22
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????22	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????22
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*/
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????d::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:W S
/
_output_shapes
:?????????d
 
_user_specified_nameinputs
?2
?
I__inference_sequential_38_layer_call_and_return_conditional_losses_213758

inputs
conv2d_53_213715
conv2d_53_213717
conv2d_54_213721
conv2d_54_213723
dense_156_213727
dense_156_213729
dense_157_213732
dense_157_213734
dense_158_213737
dense_158_213739
dense_159_213742
dense_159_213744
dense_160_213747
dense_160_213749
dense_161_213752
dense_161_213754
identity??!conv2d_53/StatefulPartitionedCall?!conv2d_54/StatefulPartitionedCall?!dense_156/StatefulPartitionedCall?!dense_157/StatefulPartitionedCall?!dense_158/StatefulPartitionedCall?!dense_159/StatefulPartitionedCall?!dense_160/StatefulPartitionedCall?!dense_161/StatefulPartitionedCall?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_53_213715conv2d_53_213717*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_53_layer_call_and_return_conditional_losses_2133352#
!conv2d_53/StatefulPartitionedCall?
 max_pooling2d_52/PartitionedCallPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_2133022"
 max_pooling2d_52/PartitionedCall?
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_52/PartitionedCall:output:0conv2d_54_213721conv2d_54_213723*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_54_layer_call_and_return_conditional_losses_2133632#
!conv2d_54/StatefulPartitionedCall?
 max_pooling2d_53/PartitionedCallPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_2133142"
 max_pooling2d_53/PartitionedCall?
!dense_156/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_53/PartitionedCall:output:0dense_156_213727dense_156_213729*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_156_layer_call_and_return_conditional_losses_2134112#
!dense_156/StatefulPartitionedCall?
!dense_157/StatefulPartitionedCallStatefulPartitionedCall*dense_156/StatefulPartitionedCall:output:0dense_157_213732dense_157_213734*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_157_layer_call_and_return_conditional_losses_2134582#
!dense_157/StatefulPartitionedCall?
!dense_158/StatefulPartitionedCallStatefulPartitionedCall*dense_157/StatefulPartitionedCall:output:0dense_158_213737dense_158_213739*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_158_layer_call_and_return_conditional_losses_2135052#
!dense_158/StatefulPartitionedCall?
!dense_159/StatefulPartitionedCallStatefulPartitionedCall*dense_158/StatefulPartitionedCall:output:0dense_159_213742dense_159_213744*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_159_layer_call_and_return_conditional_losses_2135522#
!dense_159/StatefulPartitionedCall?
!dense_160/StatefulPartitionedCallStatefulPartitionedCall*dense_159/StatefulPartitionedCall:output:0dense_160_213747dense_160_213749*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_160_layer_call_and_return_conditional_losses_2135992#
!dense_160/StatefulPartitionedCall?
!dense_161/StatefulPartitionedCallStatefulPartitionedCall*dense_160/StatefulPartitionedCall:output:0dense_161_213752dense_161_213754*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_161_layer_call_and_return_conditional_losses_2136462#
!dense_161/StatefulPartitionedCall?
IdentityIdentity*dense_161/StatefulPartitionedCall:output:0"^conv2d_53/StatefulPartitionedCall"^conv2d_54/StatefulPartitionedCall"^dense_156/StatefulPartitionedCall"^dense_157/StatefulPartitionedCall"^dense_158/StatefulPartitionedCall"^dense_159/StatefulPartitionedCall"^dense_160/StatefulPartitionedCall"^dense_161/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*n
_input_shapes]
[:?????????::::::::::::::::2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!dense_156/StatefulPartitionedCall!dense_156/StatefulPartitionedCall2F
!dense_157/StatefulPartitionedCall!dense_157/StatefulPartitionedCall2F
!dense_158/StatefulPartitionedCall!dense_158/StatefulPartitionedCall2F
!dense_159/StatefulPartitionedCall!dense_159/StatefulPartitionedCall2F
!dense_160/StatefulPartitionedCall!dense_160/StatefulPartitionedCall2F
!dense_161/StatefulPartitionedCall!dense_161/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
.__inference_sequential_38_layer_call_fn_214353

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_38_layer_call_and_return_conditional_losses_2138412
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*n
_input_shapes]
[:?????????::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
.__inference_sequential_38_layer_call_fn_213793
input_36
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_36unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_38_layer_call_and_return_conditional_losses_2137582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*n
_input_shapes]
[:?????????::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????
"
_user_specified_name
input_36
? 
?
E__inference_dense_156_layer_call_and_return_conditional_losses_214424

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	-?*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesu
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*/
_output_shapes
:?????????-2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*0
_output_shapes
:??????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????-::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:W S
/
_output_shapes
:?????????-
 
_user_specified_nameinputs
?+
?
__inference__traced_save_214704
file_prefix/
+savev2_conv2d_53_kernel_read_readvariableop-
)savev2_conv2d_53_bias_read_readvariableop/
+savev2_conv2d_54_kernel_read_readvariableop-
)savev2_conv2d_54_bias_read_readvariableop/
+savev2_dense_156_kernel_read_readvariableop-
)savev2_dense_156_bias_read_readvariableop/
+savev2_dense_157_kernel_read_readvariableop-
)savev2_dense_157_bias_read_readvariableop/
+savev2_dense_158_kernel_read_readvariableop-
)savev2_dense_158_bias_read_readvariableop/
+savev2_dense_159_kernel_read_readvariableop-
)savev2_dense_159_bias_read_readvariableop/
+savev2_dense_160_kernel_read_readvariableop-
)savev2_dense_160_bias_read_readvariableop/
+savev2_dense_161_kernel_read_readvariableop-
)savev2_dense_161_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_53_kernel_read_readvariableop)savev2_conv2d_53_bias_read_readvariableop+savev2_conv2d_54_kernel_read_readvariableop)savev2_conv2d_54_bias_read_readvariableop+savev2_dense_156_kernel_read_readvariableop)savev2_dense_156_bias_read_readvariableop+savev2_dense_157_kernel_read_readvariableop)savev2_dense_157_bias_read_readvariableop+savev2_dense_158_kernel_read_readvariableop)savev2_dense_158_bias_read_readvariableop+savev2_dense_159_kernel_read_readvariableop)savev2_dense_159_bias_read_readvariableop+savev2_dense_160_kernel_read_readvariableop)savev2_dense_160_bias_read_readvariableop+savev2_dense_161_kernel_read_readvariableop)savev2_dense_161_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :

::-:-:	-?:?:	?d:d:d2:2:2:::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:

: 

_output_shapes
::,(
&
_output_shapes
:-: 

_output_shapes
:-:%!

_output_shapes
:	-?:!

_output_shapes	
:?:%!

_output_shapes
:	?d: 

_output_shapes
:d:$	 

_output_shapes

:d2: 


_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
?2
?
I__inference_sequential_38_layer_call_and_return_conditional_losses_213663
input_36
conv2d_53_213346
conv2d_53_213348
conv2d_54_213374
conv2d_54_213376
dense_156_213422
dense_156_213424
dense_157_213469
dense_157_213471
dense_158_213516
dense_158_213518
dense_159_213563
dense_159_213565
dense_160_213610
dense_160_213612
dense_161_213657
dense_161_213659
identity??!conv2d_53/StatefulPartitionedCall?!conv2d_54/StatefulPartitionedCall?!dense_156/StatefulPartitionedCall?!dense_157/StatefulPartitionedCall?!dense_158/StatefulPartitionedCall?!dense_159/StatefulPartitionedCall?!dense_160/StatefulPartitionedCall?!dense_161/StatefulPartitionedCall?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCallinput_36conv2d_53_213346conv2d_53_213348*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_53_layer_call_and_return_conditional_losses_2133352#
!conv2d_53/StatefulPartitionedCall?
 max_pooling2d_52/PartitionedCallPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_2133022"
 max_pooling2d_52/PartitionedCall?
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_52/PartitionedCall:output:0conv2d_54_213374conv2d_54_213376*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_54_layer_call_and_return_conditional_losses_2133632#
!conv2d_54/StatefulPartitionedCall?
 max_pooling2d_53/PartitionedCallPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_2133142"
 max_pooling2d_53/PartitionedCall?
!dense_156/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_53/PartitionedCall:output:0dense_156_213422dense_156_213424*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_156_layer_call_and_return_conditional_losses_2134112#
!dense_156/StatefulPartitionedCall?
!dense_157/StatefulPartitionedCallStatefulPartitionedCall*dense_156/StatefulPartitionedCall:output:0dense_157_213469dense_157_213471*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_157_layer_call_and_return_conditional_losses_2134582#
!dense_157/StatefulPartitionedCall?
!dense_158/StatefulPartitionedCallStatefulPartitionedCall*dense_157/StatefulPartitionedCall:output:0dense_158_213516dense_158_213518*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_158_layer_call_and_return_conditional_losses_2135052#
!dense_158/StatefulPartitionedCall?
!dense_159/StatefulPartitionedCallStatefulPartitionedCall*dense_158/StatefulPartitionedCall:output:0dense_159_213563dense_159_213565*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_159_layer_call_and_return_conditional_losses_2135522#
!dense_159/StatefulPartitionedCall?
!dense_160/StatefulPartitionedCallStatefulPartitionedCall*dense_159/StatefulPartitionedCall:output:0dense_160_213610dense_160_213612*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_160_layer_call_and_return_conditional_losses_2135992#
!dense_160/StatefulPartitionedCall?
!dense_161/StatefulPartitionedCallStatefulPartitionedCall*dense_160/StatefulPartitionedCall:output:0dense_161_213657dense_161_213659*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_161_layer_call_and_return_conditional_losses_2136462#
!dense_161/StatefulPartitionedCall?
IdentityIdentity*dense_161/StatefulPartitionedCall:output:0"^conv2d_53/StatefulPartitionedCall"^conv2d_54/StatefulPartitionedCall"^dense_156/StatefulPartitionedCall"^dense_157/StatefulPartitionedCall"^dense_158/StatefulPartitionedCall"^dense_159/StatefulPartitionedCall"^dense_160/StatefulPartitionedCall"^dense_161/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*n
_input_shapes]
[:?????????::::::::::::::::2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!dense_156/StatefulPartitionedCall!dense_156/StatefulPartitionedCall2F
!dense_157/StatefulPartitionedCall!dense_157/StatefulPartitionedCall2F
!dense_158/StatefulPartitionedCall!dense_158/StatefulPartitionedCall2F
!dense_159/StatefulPartitionedCall!dense_159/StatefulPartitionedCall2F
!dense_160/StatefulPartitionedCall!dense_160/StatefulPartitionedCall2F
!dense_161/StatefulPartitionedCall!dense_161/StatefulPartitionedCall:Y U
/
_output_shapes
:?????????
"
_user_specified_name
input_36
?2
?
I__inference_sequential_38_layer_call_and_return_conditional_losses_213709
input_36
conv2d_53_213666
conv2d_53_213668
conv2d_54_213672
conv2d_54_213674
dense_156_213678
dense_156_213680
dense_157_213683
dense_157_213685
dense_158_213688
dense_158_213690
dense_159_213693
dense_159_213695
dense_160_213698
dense_160_213700
dense_161_213703
dense_161_213705
identity??!conv2d_53/StatefulPartitionedCall?!conv2d_54/StatefulPartitionedCall?!dense_156/StatefulPartitionedCall?!dense_157/StatefulPartitionedCall?!dense_158/StatefulPartitionedCall?!dense_159/StatefulPartitionedCall?!dense_160/StatefulPartitionedCall?!dense_161/StatefulPartitionedCall?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCallinput_36conv2d_53_213666conv2d_53_213668*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_53_layer_call_and_return_conditional_losses_2133352#
!conv2d_53/StatefulPartitionedCall?
 max_pooling2d_52/PartitionedCallPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_2133022"
 max_pooling2d_52/PartitionedCall?
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_52/PartitionedCall:output:0conv2d_54_213672conv2d_54_213674*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_54_layer_call_and_return_conditional_losses_2133632#
!conv2d_54/StatefulPartitionedCall?
 max_pooling2d_53/PartitionedCallPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_2133142"
 max_pooling2d_53/PartitionedCall?
!dense_156/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_53/PartitionedCall:output:0dense_156_213678dense_156_213680*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_156_layer_call_and_return_conditional_losses_2134112#
!dense_156/StatefulPartitionedCall?
!dense_157/StatefulPartitionedCallStatefulPartitionedCall*dense_156/StatefulPartitionedCall:output:0dense_157_213683dense_157_213685*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_157_layer_call_and_return_conditional_losses_2134582#
!dense_157/StatefulPartitionedCall?
!dense_158/StatefulPartitionedCallStatefulPartitionedCall*dense_157/StatefulPartitionedCall:output:0dense_158_213688dense_158_213690*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_158_layer_call_and_return_conditional_losses_2135052#
!dense_158/StatefulPartitionedCall?
!dense_159/StatefulPartitionedCallStatefulPartitionedCall*dense_158/StatefulPartitionedCall:output:0dense_159_213693dense_159_213695*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_159_layer_call_and_return_conditional_losses_2135522#
!dense_159/StatefulPartitionedCall?
!dense_160/StatefulPartitionedCallStatefulPartitionedCall*dense_159/StatefulPartitionedCall:output:0dense_160_213698dense_160_213700*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_160_layer_call_and_return_conditional_losses_2135992#
!dense_160/StatefulPartitionedCall?
!dense_161/StatefulPartitionedCallStatefulPartitionedCall*dense_160/StatefulPartitionedCall:output:0dense_161_213703dense_161_213705*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_161_layer_call_and_return_conditional_losses_2136462#
!dense_161/StatefulPartitionedCall?
IdentityIdentity*dense_161/StatefulPartitionedCall:output:0"^conv2d_53/StatefulPartitionedCall"^conv2d_54/StatefulPartitionedCall"^dense_156/StatefulPartitionedCall"^dense_157/StatefulPartitionedCall"^dense_158/StatefulPartitionedCall"^dense_159/StatefulPartitionedCall"^dense_160/StatefulPartitionedCall"^dense_161/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*n
_input_shapes]
[:?????????::::::::::::::::2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!dense_156/StatefulPartitionedCall!dense_156/StatefulPartitionedCall2F
!dense_157/StatefulPartitionedCall!dense_157/StatefulPartitionedCall2F
!dense_158/StatefulPartitionedCall!dense_158/StatefulPartitionedCall2F
!dense_159/StatefulPartitionedCall!dense_159/StatefulPartitionedCall2F
!dense_160/StatefulPartitionedCall!dense_160/StatefulPartitionedCall2F
!dense_161/StatefulPartitionedCall!dense_161/StatefulPartitionedCall:Y U
/
_output_shapes
:?????????
"
_user_specified_name
input_36
?

*__inference_dense_160_layer_call_fn_214593

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_160_layer_call_and_return_conditional_losses_2135992
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
? 
?
E__inference_dense_161_layer_call_and_return_conditional_losses_214624

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesu
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*/
_output_shapes
:?????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*/
_output_shapes
:?????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_52_layer_call_fn_213308

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_2133022
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_213302

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

*__inference_conv2d_53_layer_call_fn_214373

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_53_layer_call_and_return_conditional_losses_2133352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
$__inference_signature_wrapper_213915
input_36
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_36unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_2132962
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*n
_input_shapes]
[:?????????::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????
"
_user_specified_name
input_36
?E
?
"__inference__traced_restore_214762
file_prefix%
!assignvariableop_conv2d_53_kernel%
!assignvariableop_1_conv2d_53_bias'
#assignvariableop_2_conv2d_54_kernel%
!assignvariableop_3_conv2d_54_bias'
#assignvariableop_4_dense_156_kernel%
!assignvariableop_5_dense_156_bias'
#assignvariableop_6_dense_157_kernel%
!assignvariableop_7_dense_157_bias'
#assignvariableop_8_dense_158_kernel%
!assignvariableop_9_dense_158_bias(
$assignvariableop_10_dense_159_kernel&
"assignvariableop_11_dense_159_bias(
$assignvariableop_12_dense_160_kernel&
"assignvariableop_13_dense_160_bias(
$assignvariableop_14_dense_161_kernel&
"assignvariableop_15_dense_161_bias
identity_17??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_53_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_53_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_54_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_54_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_156_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_156_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_157_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_157_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_158_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_158_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_159_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_159_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp$assignvariableop_12_dense_160_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp"assignvariableop_13_dense_160_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp$assignvariableop_14_dense_161_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp"assignvariableop_15_dense_161_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_159
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_16?
Identity_17IdentityIdentity_16:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_17"#
identity_17Identity_17:output:0*U
_input_shapesD
B: ::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?2
?
I__inference_sequential_38_layer_call_and_return_conditional_losses_213841

inputs
conv2d_53_213798
conv2d_53_213800
conv2d_54_213804
conv2d_54_213806
dense_156_213810
dense_156_213812
dense_157_213815
dense_157_213817
dense_158_213820
dense_158_213822
dense_159_213825
dense_159_213827
dense_160_213830
dense_160_213832
dense_161_213835
dense_161_213837
identity??!conv2d_53/StatefulPartitionedCall?!conv2d_54/StatefulPartitionedCall?!dense_156/StatefulPartitionedCall?!dense_157/StatefulPartitionedCall?!dense_158/StatefulPartitionedCall?!dense_159/StatefulPartitionedCall?!dense_160/StatefulPartitionedCall?!dense_161/StatefulPartitionedCall?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_53_213798conv2d_53_213800*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_53_layer_call_and_return_conditional_losses_2133352#
!conv2d_53/StatefulPartitionedCall?
 max_pooling2d_52/PartitionedCallPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_2133022"
 max_pooling2d_52/PartitionedCall?
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_52/PartitionedCall:output:0conv2d_54_213804conv2d_54_213806*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_54_layer_call_and_return_conditional_losses_2133632#
!conv2d_54/StatefulPartitionedCall?
 max_pooling2d_53/PartitionedCallPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_2133142"
 max_pooling2d_53/PartitionedCall?
!dense_156/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_53/PartitionedCall:output:0dense_156_213810dense_156_213812*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_156_layer_call_and_return_conditional_losses_2134112#
!dense_156/StatefulPartitionedCall?
!dense_157/StatefulPartitionedCallStatefulPartitionedCall*dense_156/StatefulPartitionedCall:output:0dense_157_213815dense_157_213817*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_157_layer_call_and_return_conditional_losses_2134582#
!dense_157/StatefulPartitionedCall?
!dense_158/StatefulPartitionedCallStatefulPartitionedCall*dense_157/StatefulPartitionedCall:output:0dense_158_213820dense_158_213822*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_158_layer_call_and_return_conditional_losses_2135052#
!dense_158/StatefulPartitionedCall?
!dense_159/StatefulPartitionedCallStatefulPartitionedCall*dense_158/StatefulPartitionedCall:output:0dense_159_213825dense_159_213827*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_159_layer_call_and_return_conditional_losses_2135522#
!dense_159/StatefulPartitionedCall?
!dense_160/StatefulPartitionedCallStatefulPartitionedCall*dense_159/StatefulPartitionedCall:output:0dense_160_213830dense_160_213832*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_160_layer_call_and_return_conditional_losses_2135992#
!dense_160/StatefulPartitionedCall?
!dense_161/StatefulPartitionedCallStatefulPartitionedCall*dense_160/StatefulPartitionedCall:output:0dense_161_213835dense_161_213837*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_161_layer_call_and_return_conditional_losses_2136462#
!dense_161/StatefulPartitionedCall?
IdentityIdentity*dense_161/StatefulPartitionedCall:output:0"^conv2d_53/StatefulPartitionedCall"^conv2d_54/StatefulPartitionedCall"^dense_156/StatefulPartitionedCall"^dense_157/StatefulPartitionedCall"^dense_158/StatefulPartitionedCall"^dense_159/StatefulPartitionedCall"^dense_160/StatefulPartitionedCall"^dense_161/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*n
_input_shapes]
[:?????????::::::::::::::::2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!dense_156/StatefulPartitionedCall!dense_156/StatefulPartitionedCall2F
!dense_157/StatefulPartitionedCall!dense_157/StatefulPartitionedCall2F
!dense_158/StatefulPartitionedCall!dense_158/StatefulPartitionedCall2F
!dense_159/StatefulPartitionedCall!dense_159/StatefulPartitionedCall2F
!dense_160/StatefulPartitionedCall!dense_160/StatefulPartitionedCall2F
!dense_161/StatefulPartitionedCall!dense_161/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
? 
?
E__inference_dense_157_layer_call_and_return_conditional_losses_214464

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?d*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesu
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*0
_output_shapes
:??????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*/
_output_shapes
:?????????d2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????d2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????d2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*/
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

*__inference_dense_161_layer_call_fn_214633

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_161_layer_call_and_return_conditional_losses_2136462
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
? 
?
E__inference_dense_158_layer_call_and_return_conditional_losses_214504

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:d2*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesu
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*/
_output_shapes
:?????????d2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:22
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*/
_output_shapes
:?????????22
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????22	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????22
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*/
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????d::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:W S
/
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
E__inference_conv2d_54_layer_call_and_return_conditional_losses_213363

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:-*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:-*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????-2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????-2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?

*__inference_conv2d_54_layer_call_fn_214393

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_54_layer_call_and_return_conditional_losses_2133632
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????-2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????
::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?

?
E__inference_conv2d_53_layer_call_and_return_conditional_losses_214364

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
I__inference_sequential_38_layer_call_and_return_conditional_losses_214279

inputs,
(conv2d_53_conv2d_readvariableop_resource-
)conv2d_53_biasadd_readvariableop_resource,
(conv2d_54_conv2d_readvariableop_resource-
)conv2d_54_biasadd_readvariableop_resource/
+dense_156_tensordot_readvariableop_resource-
)dense_156_biasadd_readvariableop_resource/
+dense_157_tensordot_readvariableop_resource-
)dense_157_biasadd_readvariableop_resource/
+dense_158_tensordot_readvariableop_resource-
)dense_158_biasadd_readvariableop_resource/
+dense_159_tensordot_readvariableop_resource-
)dense_159_biasadd_readvariableop_resource/
+dense_160_tensordot_readvariableop_resource-
)dense_160_biasadd_readvariableop_resource/
+dense_161_tensordot_readvariableop_resource-
)dense_161_biasadd_readvariableop_resource
identity?? conv2d_53/BiasAdd/ReadVariableOp?conv2d_53/Conv2D/ReadVariableOp? conv2d_54/BiasAdd/ReadVariableOp?conv2d_54/Conv2D/ReadVariableOp? dense_156/BiasAdd/ReadVariableOp?"dense_156/Tensordot/ReadVariableOp? dense_157/BiasAdd/ReadVariableOp?"dense_157/Tensordot/ReadVariableOp? dense_158/BiasAdd/ReadVariableOp?"dense_158/Tensordot/ReadVariableOp? dense_159/BiasAdd/ReadVariableOp?"dense_159/Tensordot/ReadVariableOp? dense_160/BiasAdd/ReadVariableOp?"dense_160/Tensordot/ReadVariableOp? dense_161/BiasAdd/ReadVariableOp?"dense_161/Tensordot/ReadVariableOp?
conv2d_53/Conv2D/ReadVariableOpReadVariableOp(conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype02!
conv2d_53/Conv2D/ReadVariableOp?
conv2d_53/Conv2DConv2Dinputs'conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
conv2d_53/Conv2D?
 conv2d_53/BiasAdd/ReadVariableOpReadVariableOp)conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_53/BiasAdd/ReadVariableOp?
conv2d_53/BiasAddBiasAddconv2d_53/Conv2D:output:0(conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d_53/BiasAdd~
conv2d_53/ReluReluconv2d_53/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
conv2d_53/Relu?
max_pooling2d_52/MaxPoolMaxPoolconv2d_53/Relu:activations:0*/
_output_shapes
:?????????
*
ksize
*
paddingVALID*
strides
2
max_pooling2d_52/MaxPool?
conv2d_54/Conv2D/ReadVariableOpReadVariableOp(conv2d_54_conv2d_readvariableop_resource*&
_output_shapes
:-*
dtype02!
conv2d_54/Conv2D/ReadVariableOp?
conv2d_54/Conv2DConv2D!max_pooling2d_52/MaxPool:output:0'conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-*
paddingVALID*
strides
2
conv2d_54/Conv2D?
 conv2d_54/BiasAdd/ReadVariableOpReadVariableOp)conv2d_54_biasadd_readvariableop_resource*
_output_shapes
:-*
dtype02"
 conv2d_54/BiasAdd/ReadVariableOp?
conv2d_54/BiasAddBiasAddconv2d_54/Conv2D:output:0(conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-2
conv2d_54/BiasAdd~
conv2d_54/ReluReluconv2d_54/BiasAdd:output:0*
T0*/
_output_shapes
:?????????-2
conv2d_54/Relu?
max_pooling2d_53/MaxPoolMaxPoolconv2d_54/Relu:activations:0*/
_output_shapes
:?????????-*
ksize
*
paddingVALID*
strides
2
max_pooling2d_53/MaxPool?
"dense_156/Tensordot/ReadVariableOpReadVariableOp+dense_156_tensordot_readvariableop_resource*
_output_shapes
:	-?*
dtype02$
"dense_156/Tensordot/ReadVariableOp~
dense_156/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_156/Tensordot/axes?
dense_156/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
dense_156/Tensordot/free?
dense_156/Tensordot/ShapeShape!max_pooling2d_53/MaxPool:output:0*
T0*
_output_shapes
:2
dense_156/Tensordot/Shape?
!dense_156/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_156/Tensordot/GatherV2/axis?
dense_156/Tensordot/GatherV2GatherV2"dense_156/Tensordot/Shape:output:0!dense_156/Tensordot/free:output:0*dense_156/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_156/Tensordot/GatherV2?
#dense_156/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_156/Tensordot/GatherV2_1/axis?
dense_156/Tensordot/GatherV2_1GatherV2"dense_156/Tensordot/Shape:output:0!dense_156/Tensordot/axes:output:0,dense_156/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_156/Tensordot/GatherV2_1?
dense_156/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_156/Tensordot/Const?
dense_156/Tensordot/ProdProd%dense_156/Tensordot/GatherV2:output:0"dense_156/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_156/Tensordot/Prod?
dense_156/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_156/Tensordot/Const_1?
dense_156/Tensordot/Prod_1Prod'dense_156/Tensordot/GatherV2_1:output:0$dense_156/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_156/Tensordot/Prod_1?
dense_156/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_156/Tensordot/concat/axis?
dense_156/Tensordot/concatConcatV2!dense_156/Tensordot/free:output:0!dense_156/Tensordot/axes:output:0(dense_156/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_156/Tensordot/concat?
dense_156/Tensordot/stackPack!dense_156/Tensordot/Prod:output:0#dense_156/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_156/Tensordot/stack?
dense_156/Tensordot/transpose	Transpose!max_pooling2d_53/MaxPool:output:0#dense_156/Tensordot/concat:output:0*
T0*/
_output_shapes
:?????????-2
dense_156/Tensordot/transpose?
dense_156/Tensordot/ReshapeReshape!dense_156/Tensordot/transpose:y:0"dense_156/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_156/Tensordot/Reshape?
dense_156/Tensordot/MatMulMatMul$dense_156/Tensordot/Reshape:output:0*dense_156/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_156/Tensordot/MatMul?
dense_156/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
dense_156/Tensordot/Const_2?
!dense_156/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_156/Tensordot/concat_1/axis?
dense_156/Tensordot/concat_1ConcatV2%dense_156/Tensordot/GatherV2:output:0$dense_156/Tensordot/Const_2:output:0*dense_156/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_156/Tensordot/concat_1?
dense_156/TensordotReshape$dense_156/Tensordot/MatMul:product:0%dense_156/Tensordot/concat_1:output:0*
T0*0
_output_shapes
:??????????2
dense_156/Tensordot?
 dense_156/BiasAdd/ReadVariableOpReadVariableOp)dense_156_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_156/BiasAdd/ReadVariableOp?
dense_156/BiasAddBiasAdddense_156/Tensordot:output:0(dense_156/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????2
dense_156/BiasAdd
dense_156/ReluReludense_156/BiasAdd:output:0*
T0*0
_output_shapes
:??????????2
dense_156/Relu?
"dense_157/Tensordot/ReadVariableOpReadVariableOp+dense_157_tensordot_readvariableop_resource*
_output_shapes
:	?d*
dtype02$
"dense_157/Tensordot/ReadVariableOp~
dense_157/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_157/Tensordot/axes?
dense_157/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
dense_157/Tensordot/free?
dense_157/Tensordot/ShapeShapedense_156/Relu:activations:0*
T0*
_output_shapes
:2
dense_157/Tensordot/Shape?
!dense_157/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_157/Tensordot/GatherV2/axis?
dense_157/Tensordot/GatherV2GatherV2"dense_157/Tensordot/Shape:output:0!dense_157/Tensordot/free:output:0*dense_157/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_157/Tensordot/GatherV2?
#dense_157/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_157/Tensordot/GatherV2_1/axis?
dense_157/Tensordot/GatherV2_1GatherV2"dense_157/Tensordot/Shape:output:0!dense_157/Tensordot/axes:output:0,dense_157/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_157/Tensordot/GatherV2_1?
dense_157/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_157/Tensordot/Const?
dense_157/Tensordot/ProdProd%dense_157/Tensordot/GatherV2:output:0"dense_157/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_157/Tensordot/Prod?
dense_157/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_157/Tensordot/Const_1?
dense_157/Tensordot/Prod_1Prod'dense_157/Tensordot/GatherV2_1:output:0$dense_157/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_157/Tensordot/Prod_1?
dense_157/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_157/Tensordot/concat/axis?
dense_157/Tensordot/concatConcatV2!dense_157/Tensordot/free:output:0!dense_157/Tensordot/axes:output:0(dense_157/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_157/Tensordot/concat?
dense_157/Tensordot/stackPack!dense_157/Tensordot/Prod:output:0#dense_157/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_157/Tensordot/stack?
dense_157/Tensordot/transpose	Transposedense_156/Relu:activations:0#dense_157/Tensordot/concat:output:0*
T0*0
_output_shapes
:??????????2
dense_157/Tensordot/transpose?
dense_157/Tensordot/ReshapeReshape!dense_157/Tensordot/transpose:y:0"dense_157/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_157/Tensordot/Reshape?
dense_157/Tensordot/MatMulMatMul$dense_157/Tensordot/Reshape:output:0*dense_157/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_157/Tensordot/MatMul?
dense_157/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
dense_157/Tensordot/Const_2?
!dense_157/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_157/Tensordot/concat_1/axis?
dense_157/Tensordot/concat_1ConcatV2%dense_157/Tensordot/GatherV2:output:0$dense_157/Tensordot/Const_2:output:0*dense_157/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_157/Tensordot/concat_1?
dense_157/TensordotReshape$dense_157/Tensordot/MatMul:product:0%dense_157/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:?????????d2
dense_157/Tensordot?
 dense_157/BiasAdd/ReadVariableOpReadVariableOp)dense_157_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_157/BiasAdd/ReadVariableOp?
dense_157/BiasAddBiasAdddense_157/Tensordot:output:0(dense_157/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????d2
dense_157/BiasAdd~
dense_157/ReluReludense_157/BiasAdd:output:0*
T0*/
_output_shapes
:?????????d2
dense_157/Relu?
"dense_158/Tensordot/ReadVariableOpReadVariableOp+dense_158_tensordot_readvariableop_resource*
_output_shapes

:d2*
dtype02$
"dense_158/Tensordot/ReadVariableOp~
dense_158/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_158/Tensordot/axes?
dense_158/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
dense_158/Tensordot/free?
dense_158/Tensordot/ShapeShapedense_157/Relu:activations:0*
T0*
_output_shapes
:2
dense_158/Tensordot/Shape?
!dense_158/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_158/Tensordot/GatherV2/axis?
dense_158/Tensordot/GatherV2GatherV2"dense_158/Tensordot/Shape:output:0!dense_158/Tensordot/free:output:0*dense_158/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_158/Tensordot/GatherV2?
#dense_158/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_158/Tensordot/GatherV2_1/axis?
dense_158/Tensordot/GatherV2_1GatherV2"dense_158/Tensordot/Shape:output:0!dense_158/Tensordot/axes:output:0,dense_158/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_158/Tensordot/GatherV2_1?
dense_158/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_158/Tensordot/Const?
dense_158/Tensordot/ProdProd%dense_158/Tensordot/GatherV2:output:0"dense_158/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_158/Tensordot/Prod?
dense_158/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_158/Tensordot/Const_1?
dense_158/Tensordot/Prod_1Prod'dense_158/Tensordot/GatherV2_1:output:0$dense_158/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_158/Tensordot/Prod_1?
dense_158/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_158/Tensordot/concat/axis?
dense_158/Tensordot/concatConcatV2!dense_158/Tensordot/free:output:0!dense_158/Tensordot/axes:output:0(dense_158/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_158/Tensordot/concat?
dense_158/Tensordot/stackPack!dense_158/Tensordot/Prod:output:0#dense_158/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_158/Tensordot/stack?
dense_158/Tensordot/transpose	Transposedense_157/Relu:activations:0#dense_158/Tensordot/concat:output:0*
T0*/
_output_shapes
:?????????d2
dense_158/Tensordot/transpose?
dense_158/Tensordot/ReshapeReshape!dense_158/Tensordot/transpose:y:0"dense_158/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_158/Tensordot/Reshape?
dense_158/Tensordot/MatMulMatMul$dense_158/Tensordot/Reshape:output:0*dense_158/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_158/Tensordot/MatMul?
dense_158/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:22
dense_158/Tensordot/Const_2?
!dense_158/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_158/Tensordot/concat_1/axis?
dense_158/Tensordot/concat_1ConcatV2%dense_158/Tensordot/GatherV2:output:0$dense_158/Tensordot/Const_2:output:0*dense_158/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_158/Tensordot/concat_1?
dense_158/TensordotReshape$dense_158/Tensordot/MatMul:product:0%dense_158/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:?????????22
dense_158/Tensordot?
 dense_158/BiasAdd/ReadVariableOpReadVariableOp)dense_158_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02"
 dense_158/BiasAdd/ReadVariableOp?
dense_158/BiasAddBiasAdddense_158/Tensordot:output:0(dense_158/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????22
dense_158/BiasAdd~
dense_158/ReluReludense_158/BiasAdd:output:0*
T0*/
_output_shapes
:?????????22
dense_158/Relu?
"dense_159/Tensordot/ReadVariableOpReadVariableOp+dense_159_tensordot_readvariableop_resource*
_output_shapes

:2*
dtype02$
"dense_159/Tensordot/ReadVariableOp~
dense_159/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_159/Tensordot/axes?
dense_159/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
dense_159/Tensordot/free?
dense_159/Tensordot/ShapeShapedense_158/Relu:activations:0*
T0*
_output_shapes
:2
dense_159/Tensordot/Shape?
!dense_159/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_159/Tensordot/GatherV2/axis?
dense_159/Tensordot/GatherV2GatherV2"dense_159/Tensordot/Shape:output:0!dense_159/Tensordot/free:output:0*dense_159/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_159/Tensordot/GatherV2?
#dense_159/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_159/Tensordot/GatherV2_1/axis?
dense_159/Tensordot/GatherV2_1GatherV2"dense_159/Tensordot/Shape:output:0!dense_159/Tensordot/axes:output:0,dense_159/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_159/Tensordot/GatherV2_1?
dense_159/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_159/Tensordot/Const?
dense_159/Tensordot/ProdProd%dense_159/Tensordot/GatherV2:output:0"dense_159/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_159/Tensordot/Prod?
dense_159/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_159/Tensordot/Const_1?
dense_159/Tensordot/Prod_1Prod'dense_159/Tensordot/GatherV2_1:output:0$dense_159/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_159/Tensordot/Prod_1?
dense_159/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_159/Tensordot/concat/axis?
dense_159/Tensordot/concatConcatV2!dense_159/Tensordot/free:output:0!dense_159/Tensordot/axes:output:0(dense_159/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_159/Tensordot/concat?
dense_159/Tensordot/stackPack!dense_159/Tensordot/Prod:output:0#dense_159/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_159/Tensordot/stack?
dense_159/Tensordot/transpose	Transposedense_158/Relu:activations:0#dense_159/Tensordot/concat:output:0*
T0*/
_output_shapes
:?????????22
dense_159/Tensordot/transpose?
dense_159/Tensordot/ReshapeReshape!dense_159/Tensordot/transpose:y:0"dense_159/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_159/Tensordot/Reshape?
dense_159/Tensordot/MatMulMatMul$dense_159/Tensordot/Reshape:output:0*dense_159/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_159/Tensordot/MatMul?
dense_159/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_159/Tensordot/Const_2?
!dense_159/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_159/Tensordot/concat_1/axis?
dense_159/Tensordot/concat_1ConcatV2%dense_159/Tensordot/GatherV2:output:0$dense_159/Tensordot/Const_2:output:0*dense_159/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_159/Tensordot/concat_1?
dense_159/TensordotReshape$dense_159/Tensordot/MatMul:product:0%dense_159/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:?????????2
dense_159/Tensordot?
 dense_159/BiasAdd/ReadVariableOpReadVariableOp)dense_159_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_159/BiasAdd/ReadVariableOp?
dense_159/BiasAddBiasAdddense_159/Tensordot:output:0(dense_159/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
dense_159/BiasAdd~
dense_159/ReluReludense_159/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
dense_159/Relu?
"dense_160/Tensordot/ReadVariableOpReadVariableOp+dense_160_tensordot_readvariableop_resource*
_output_shapes

:*
dtype02$
"dense_160/Tensordot/ReadVariableOp~
dense_160/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_160/Tensordot/axes?
dense_160/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
dense_160/Tensordot/free?
dense_160/Tensordot/ShapeShapedense_159/Relu:activations:0*
T0*
_output_shapes
:2
dense_160/Tensordot/Shape?
!dense_160/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_160/Tensordot/GatherV2/axis?
dense_160/Tensordot/GatherV2GatherV2"dense_160/Tensordot/Shape:output:0!dense_160/Tensordot/free:output:0*dense_160/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_160/Tensordot/GatherV2?
#dense_160/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_160/Tensordot/GatherV2_1/axis?
dense_160/Tensordot/GatherV2_1GatherV2"dense_160/Tensordot/Shape:output:0!dense_160/Tensordot/axes:output:0,dense_160/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_160/Tensordot/GatherV2_1?
dense_160/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_160/Tensordot/Const?
dense_160/Tensordot/ProdProd%dense_160/Tensordot/GatherV2:output:0"dense_160/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_160/Tensordot/Prod?
dense_160/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_160/Tensordot/Const_1?
dense_160/Tensordot/Prod_1Prod'dense_160/Tensordot/GatherV2_1:output:0$dense_160/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_160/Tensordot/Prod_1?
dense_160/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_160/Tensordot/concat/axis?
dense_160/Tensordot/concatConcatV2!dense_160/Tensordot/free:output:0!dense_160/Tensordot/axes:output:0(dense_160/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_160/Tensordot/concat?
dense_160/Tensordot/stackPack!dense_160/Tensordot/Prod:output:0#dense_160/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_160/Tensordot/stack?
dense_160/Tensordot/transpose	Transposedense_159/Relu:activations:0#dense_160/Tensordot/concat:output:0*
T0*/
_output_shapes
:?????????2
dense_160/Tensordot/transpose?
dense_160/Tensordot/ReshapeReshape!dense_160/Tensordot/transpose:y:0"dense_160/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_160/Tensordot/Reshape?
dense_160/Tensordot/MatMulMatMul$dense_160/Tensordot/Reshape:output:0*dense_160/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_160/Tensordot/MatMul?
dense_160/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_160/Tensordot/Const_2?
!dense_160/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_160/Tensordot/concat_1/axis?
dense_160/Tensordot/concat_1ConcatV2%dense_160/Tensordot/GatherV2:output:0$dense_160/Tensordot/Const_2:output:0*dense_160/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_160/Tensordot/concat_1?
dense_160/TensordotReshape$dense_160/Tensordot/MatMul:product:0%dense_160/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:?????????2
dense_160/Tensordot?
 dense_160/BiasAdd/ReadVariableOpReadVariableOp)dense_160_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_160/BiasAdd/ReadVariableOp?
dense_160/BiasAddBiasAdddense_160/Tensordot:output:0(dense_160/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
dense_160/BiasAdd~
dense_160/ReluReludense_160/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
dense_160/Relu?
"dense_161/Tensordot/ReadVariableOpReadVariableOp+dense_161_tensordot_readvariableop_resource*
_output_shapes

:*
dtype02$
"dense_161/Tensordot/ReadVariableOp~
dense_161/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_161/Tensordot/axes?
dense_161/Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
dense_161/Tensordot/free?
dense_161/Tensordot/ShapeShapedense_160/Relu:activations:0*
T0*
_output_shapes
:2
dense_161/Tensordot/Shape?
!dense_161/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_161/Tensordot/GatherV2/axis?
dense_161/Tensordot/GatherV2GatherV2"dense_161/Tensordot/Shape:output:0!dense_161/Tensordot/free:output:0*dense_161/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_161/Tensordot/GatherV2?
#dense_161/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#dense_161/Tensordot/GatherV2_1/axis?
dense_161/Tensordot/GatherV2_1GatherV2"dense_161/Tensordot/Shape:output:0!dense_161/Tensordot/axes:output:0,dense_161/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2 
dense_161/Tensordot/GatherV2_1?
dense_161/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_161/Tensordot/Const?
dense_161/Tensordot/ProdProd%dense_161/Tensordot/GatherV2:output:0"dense_161/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_161/Tensordot/Prod?
dense_161/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_161/Tensordot/Const_1?
dense_161/Tensordot/Prod_1Prod'dense_161/Tensordot/GatherV2_1:output:0$dense_161/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_161/Tensordot/Prod_1?
dense_161/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_161/Tensordot/concat/axis?
dense_161/Tensordot/concatConcatV2!dense_161/Tensordot/free:output:0!dense_161/Tensordot/axes:output:0(dense_161/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_161/Tensordot/concat?
dense_161/Tensordot/stackPack!dense_161/Tensordot/Prod:output:0#dense_161/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_161/Tensordot/stack?
dense_161/Tensordot/transpose	Transposedense_160/Relu:activations:0#dense_161/Tensordot/concat:output:0*
T0*/
_output_shapes
:?????????2
dense_161/Tensordot/transpose?
dense_161/Tensordot/ReshapeReshape!dense_161/Tensordot/transpose:y:0"dense_161/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_161/Tensordot/Reshape?
dense_161/Tensordot/MatMulMatMul$dense_161/Tensordot/Reshape:output:0*dense_161/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_161/Tensordot/MatMul?
dense_161/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_161/Tensordot/Const_2?
!dense_161/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_161/Tensordot/concat_1/axis?
dense_161/Tensordot/concat_1ConcatV2%dense_161/Tensordot/GatherV2:output:0$dense_161/Tensordot/Const_2:output:0*dense_161/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_161/Tensordot/concat_1?
dense_161/TensordotReshape$dense_161/Tensordot/MatMul:product:0%dense_161/Tensordot/concat_1:output:0*
T0*/
_output_shapes
:?????????2
dense_161/Tensordot?
 dense_161/BiasAdd/ReadVariableOpReadVariableOp)dense_161_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_161/BiasAdd/ReadVariableOp?
dense_161/BiasAddBiasAdddense_161/Tensordot:output:0(dense_161/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
dense_161/BiasAdd~
dense_161/ReluReludense_161/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
dense_161/Relu?
IdentityIdentitydense_161/Relu:activations:0!^conv2d_53/BiasAdd/ReadVariableOp ^conv2d_53/Conv2D/ReadVariableOp!^conv2d_54/BiasAdd/ReadVariableOp ^conv2d_54/Conv2D/ReadVariableOp!^dense_156/BiasAdd/ReadVariableOp#^dense_156/Tensordot/ReadVariableOp!^dense_157/BiasAdd/ReadVariableOp#^dense_157/Tensordot/ReadVariableOp!^dense_158/BiasAdd/ReadVariableOp#^dense_158/Tensordot/ReadVariableOp!^dense_159/BiasAdd/ReadVariableOp#^dense_159/Tensordot/ReadVariableOp!^dense_160/BiasAdd/ReadVariableOp#^dense_160/Tensordot/ReadVariableOp!^dense_161/BiasAdd/ReadVariableOp#^dense_161/Tensordot/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*n
_input_shapes]
[:?????????::::::::::::::::2D
 conv2d_53/BiasAdd/ReadVariableOp conv2d_53/BiasAdd/ReadVariableOp2B
conv2d_53/Conv2D/ReadVariableOpconv2d_53/Conv2D/ReadVariableOp2D
 conv2d_54/BiasAdd/ReadVariableOp conv2d_54/BiasAdd/ReadVariableOp2B
conv2d_54/Conv2D/ReadVariableOpconv2d_54/Conv2D/ReadVariableOp2D
 dense_156/BiasAdd/ReadVariableOp dense_156/BiasAdd/ReadVariableOp2H
"dense_156/Tensordot/ReadVariableOp"dense_156/Tensordot/ReadVariableOp2D
 dense_157/BiasAdd/ReadVariableOp dense_157/BiasAdd/ReadVariableOp2H
"dense_157/Tensordot/ReadVariableOp"dense_157/Tensordot/ReadVariableOp2D
 dense_158/BiasAdd/ReadVariableOp dense_158/BiasAdd/ReadVariableOp2H
"dense_158/Tensordot/ReadVariableOp"dense_158/Tensordot/ReadVariableOp2D
 dense_159/BiasAdd/ReadVariableOp dense_159/BiasAdd/ReadVariableOp2H
"dense_159/Tensordot/ReadVariableOp"dense_159/Tensordot/ReadVariableOp2D
 dense_160/BiasAdd/ReadVariableOp dense_160/BiasAdd/ReadVariableOp2H
"dense_160/Tensordot/ReadVariableOp"dense_160/Tensordot/ReadVariableOp2D
 dense_161/BiasAdd/ReadVariableOp dense_161/BiasAdd/ReadVariableOp2H
"dense_161/Tensordot/ReadVariableOp"dense_161/Tensordot/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

*__inference_dense_159_layer_call_fn_214553

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_159_layer_call_and_return_conditional_losses_2135522
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????2::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????2
 
_user_specified_nameinputs
? 
?
E__inference_dense_161_layer_call_and_return_conditional_losses_213646

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesu
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*/
_output_shapes
:?????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*/
_output_shapes
:?????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
? 
?
E__inference_dense_157_layer_call_and_return_conditional_losses_213458

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?d*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesu
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*0
_output_shapes
:??????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:d2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*/
_output_shapes
:?????????d2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????d2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????d2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*/
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
? 
?
E__inference_dense_160_layer_call_and_return_conditional_losses_213599

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesu
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*/
_output_shapes
:?????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*/
_output_shapes
:?????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
? 
?
E__inference_dense_159_layer_call_and_return_conditional_losses_213552

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:2*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesu
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*/
_output_shapes
:?????????22
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*/
_output_shapes
:?????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:W S
/
_output_shapes
:?????????2
 
_user_specified_nameinputs
?

?
.__inference_sequential_38_layer_call_fn_213876
input_36
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_36unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_38_layer_call_and_return_conditional_losses_2138412
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*n
_input_shapes]
[:?????????::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????
"
_user_specified_name
input_36
?
h
L__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_213314

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
E__inference_conv2d_54_layer_call_and_return_conditional_losses_214384

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:-*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:-*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????-2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????-2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????-2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?

*__inference_dense_156_layer_call_fn_214433

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_156_layer_call_and_return_conditional_losses_2134112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????-::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????-
 
_user_specified_nameinputs
?

*__inference_dense_157_layer_call_fn_214473

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_157_layer_call_and_return_conditional_losses_2134582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
.__inference_sequential_38_layer_call_fn_214316

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_38_layer_call_and_return_conditional_losses_2137582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*n
_input_shapes]
[:?????????::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
? 
?
E__inference_dense_159_layer_call_and_return_conditional_losses_214544

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:2*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesu
Tensordot/freeConst*
_output_shapes
:*
dtype0*!
valueB"          2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*/
_output_shapes
:?????????22
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*/
_output_shapes
:?????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:?????????2::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:W S
/
_output_shapes
:?????????2
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
E
input_369
serving_default_input_36:0?????????E
	dense_1618
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?T
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"?P
_tf_keras_sequential?P{"class_name": "Sequential", "name": "sequential_38", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_38", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 22, 29, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_36"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_53", "trainable": true, "dtype": "float32", "filters": 25, "kernel_size": {"class_name": "__tuple__", "items": [10, 10]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_52", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_54", "trainable": true, "dtype": "float32", "filters": 45, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_53", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3]}, "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_156", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_157", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_158", "trainable": true, "dtype": "float32", "units": 50, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_159", "trainable": true, "dtype": "float32", "units": 25, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_160", "trainable": true, "dtype": "float32", "units": 15, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_161", "trainable": true, "dtype": "float32", "units": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 22, 29, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_38", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 22, 29, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_36"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_53", "trainable": true, "dtype": "float32", "filters": 25, "kernel_size": {"class_name": "__tuple__", "items": [10, 10]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_52", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_54", "trainable": true, "dtype": "float32", "filters": 45, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_53", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3]}, "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_156", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_157", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_158", "trainable": true, "dtype": "float32", "units": 50, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_159", "trainable": true, "dtype": "float32", "units": 25, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_160", "trainable": true, "dtype": "float32", "units": 15, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_161", "trainable": true, "dtype": "float32", "units": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": ["accuracy"], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 3e-05, "decay": 0.0, "beta_1": 0.9, "beta_2": 0.999, "epsilon": 1e-07, "amsgrad": false}}}}
?	

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_53", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_53", "trainable": true, "dtype": "float32", "filters": 25, "kernel_size": {"class_name": "__tuple__", "items": [10, 10]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 22, 29, 1]}}
?
	variables
trainable_variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_52", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_52", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "conv2d_54", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_54", "trainable": true, "dtype": "float32", "filters": 45, "kernel_size": {"class_name": "__tuple__", "items": [4, 4]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 25}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6, 10, 25]}}
?
!	variables
"trainable_variables
#regularization_losses
$	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "max_pooling2d_53", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_53", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_156", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_156", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 45}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 2, 45]}}
?

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_157", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_157", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 2, 200]}}
?

1kernel
2bias
3	variables
4trainable_variables
5regularization_losses
6	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_158", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_158", "trainable": true, "dtype": "float32", "units": 50, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 2, 100]}}
?

7kernel
8bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_159", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_159", "trainable": true, "dtype": "float32", "units": 25, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 2, 50]}}
?

=kernel
>bias
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_160", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_160", "trainable": true, "dtype": "float32", "units": 15, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 25}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 2, 25]}}
?

Ckernel
Dbias
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_161", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_161", "trainable": true, "dtype": "float32", "units": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 15}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 2, 15]}}
"
	optimizer
?
0
1
2
3
%4
&5
+6
,7
18
29
710
811
=12
>13
C14
D15"
trackable_list_wrapper
?
0
1
2
3
%4
&5
+6
,7
18
29
710
811
=12
>13
C14
D15"
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables
Inon_trainable_variables

Jlayers
Kmetrics
trainable_variables
Llayer_metrics
regularization_losses
Mlayer_regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
*:(

2conv2d_53/kernel
:2conv2d_53/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Nnon_trainable_variables
	variables

Olayers
Pmetrics
trainable_variables
Qlayer_metrics
regularization_losses
Rlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Snon_trainable_variables
	variables

Tlayers
Umetrics
trainable_variables
Vlayer_metrics
regularization_losses
Wlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(-2conv2d_54/kernel
:-2conv2d_54/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Xnon_trainable_variables
	variables

Ylayers
Zmetrics
trainable_variables
[layer_metrics
regularization_losses
\layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
]non_trainable_variables
!	variables

^layers
_metrics
"trainable_variables
`layer_metrics
#regularization_losses
alayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!	-?2dense_156/kernel
:?2dense_156/bias
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
bnon_trainable_variables
'	variables

clayers
dmetrics
(trainable_variables
elayer_metrics
)regularization_losses
flayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!	?d2dense_157/kernel
:d2dense_157/bias
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
gnon_trainable_variables
-	variables

hlayers
imetrics
.trainable_variables
jlayer_metrics
/regularization_losses
klayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": d22dense_158/kernel
:22dense_158/bias
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
?
lnon_trainable_variables
3	variables

mlayers
nmetrics
4trainable_variables
olayer_metrics
5regularization_losses
player_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 22dense_159/kernel
:2dense_159/bias
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
?
qnon_trainable_variables
9	variables

rlayers
smetrics
:trainable_variables
tlayer_metrics
;regularization_losses
ulayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 2dense_160/kernel
:2dense_160/bias
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
vnon_trainable_variables
?	variables

wlayers
xmetrics
@trainable_variables
ylayer_metrics
Aregularization_losses
zlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 2dense_161/kernel
:2dense_161/bias
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
{non_trainable_variables
E	variables

|layers
}metrics
Ftrainable_variables
~layer_metrics
Gregularization_losses
layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
	8

9"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?2?
I__inference_sequential_38_layer_call_and_return_conditional_losses_213663
I__inference_sequential_38_layer_call_and_return_conditional_losses_213709
I__inference_sequential_38_layer_call_and_return_conditional_losses_214279
I__inference_sequential_38_layer_call_and_return_conditional_losses_214097?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
!__inference__wrapped_model_213296?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? */?,
*?'
input_36?????????
?2?
.__inference_sequential_38_layer_call_fn_213876
.__inference_sequential_38_layer_call_fn_214353
.__inference_sequential_38_layer_call_fn_213793
.__inference_sequential_38_layer_call_fn_214316?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_conv2d_53_layer_call_and_return_conditional_losses_214364?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_conv2d_53_layer_call_fn_214373?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_213302?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
1__inference_max_pooling2d_52_layer_call_fn_213308?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
E__inference_conv2d_54_layer_call_and_return_conditional_losses_214384?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_conv2d_54_layer_call_fn_214393?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_213314?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
1__inference_max_pooling2d_53_layer_call_fn_213320?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
E__inference_dense_156_layer_call_and_return_conditional_losses_214424?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_156_layer_call_fn_214433?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_157_layer_call_and_return_conditional_losses_214464?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_157_layer_call_fn_214473?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_158_layer_call_and_return_conditional_losses_214504?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_158_layer_call_fn_214513?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_159_layer_call_and_return_conditional_losses_214544?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_159_layer_call_fn_214553?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_160_layer_call_and_return_conditional_losses_214584?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_160_layer_call_fn_214593?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_dense_161_layer_call_and_return_conditional_losses_214624?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_dense_161_layer_call_fn_214633?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_213915input_36"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_213296?%&+,1278=>CD9?6
/?,
*?'
input_36?????????
? "=?:
8
	dense_161+?(
	dense_161??????????
E__inference_conv2d_53_layer_call_and_return_conditional_losses_214364l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
*__inference_conv2d_53_layer_call_fn_214373_7?4
-?*
(?%
inputs?????????
? " ???????????
E__inference_conv2d_54_layer_call_and_return_conditional_losses_214384l7?4
-?*
(?%
inputs?????????

? "-?*
#? 
0?????????-
? ?
*__inference_conv2d_54_layer_call_fn_214393_7?4
-?*
(?%
inputs?????????

? " ??????????-?
E__inference_dense_156_layer_call_and_return_conditional_losses_214424m%&7?4
-?*
(?%
inputs?????????-
? ".?+
$?!
0??????????
? ?
*__inference_dense_156_layer_call_fn_214433`%&7?4
-?*
(?%
inputs?????????-
? "!????????????
E__inference_dense_157_layer_call_and_return_conditional_losses_214464m+,8?5
.?+
)?&
inputs??????????
? "-?*
#? 
0?????????d
? ?
*__inference_dense_157_layer_call_fn_214473`+,8?5
.?+
)?&
inputs??????????
? " ??????????d?
E__inference_dense_158_layer_call_and_return_conditional_losses_214504l127?4
-?*
(?%
inputs?????????d
? "-?*
#? 
0?????????2
? ?
*__inference_dense_158_layer_call_fn_214513_127?4
-?*
(?%
inputs?????????d
? " ??????????2?
E__inference_dense_159_layer_call_and_return_conditional_losses_214544l787?4
-?*
(?%
inputs?????????2
? "-?*
#? 
0?????????
? ?
*__inference_dense_159_layer_call_fn_214553_787?4
-?*
(?%
inputs?????????2
? " ???????????
E__inference_dense_160_layer_call_and_return_conditional_losses_214584l=>7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
*__inference_dense_160_layer_call_fn_214593_=>7?4
-?*
(?%
inputs?????????
? " ???????????
E__inference_dense_161_layer_call_and_return_conditional_losses_214624lCD7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
*__inference_dense_161_layer_call_fn_214633_CD7?4
-?*
(?%
inputs?????????
? " ???????????
L__inference_max_pooling2d_52_layer_call_and_return_conditional_losses_213302?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_52_layer_call_fn_213308?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
L__inference_max_pooling2d_53_layer_call_and_return_conditional_losses_213314?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
1__inference_max_pooling2d_53_layer_call_fn_213320?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
I__inference_sequential_38_layer_call_and_return_conditional_losses_213663?%&+,1278=>CDA?>
7?4
*?'
input_36?????????
p

 
? "-?*
#? 
0?????????
? ?
I__inference_sequential_38_layer_call_and_return_conditional_losses_213709?%&+,1278=>CDA?>
7?4
*?'
input_36?????????
p 

 
? "-?*
#? 
0?????????
? ?
I__inference_sequential_38_layer_call_and_return_conditional_losses_214097?%&+,1278=>CD??<
5?2
(?%
inputs?????????
p

 
? "-?*
#? 
0?????????
? ?
I__inference_sequential_38_layer_call_and_return_conditional_losses_214279?%&+,1278=>CD??<
5?2
(?%
inputs?????????
p 

 
? "-?*
#? 
0?????????
? ?
.__inference_sequential_38_layer_call_fn_213793w%&+,1278=>CDA?>
7?4
*?'
input_36?????????
p

 
? " ???????????
.__inference_sequential_38_layer_call_fn_213876w%&+,1278=>CDA?>
7?4
*?'
input_36?????????
p 

 
? " ???????????
.__inference_sequential_38_layer_call_fn_214316u%&+,1278=>CD??<
5?2
(?%
inputs?????????
p

 
? " ???????????
.__inference_sequential_38_layer_call_fn_214353u%&+,1278=>CD??<
5?2
(?%
inputs?????????
p 

 
? " ???????????
$__inference_signature_wrapper_213915?%&+,1278=>CDE?B
? 
;?8
6
input_36*?'
input_36?????????"=?:
8
	dense_161+?(
	dense_161?????????