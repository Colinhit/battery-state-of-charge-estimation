��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
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
�
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
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
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
�
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
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
executor_typestring ��
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8Ȧ
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

: *
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
: *
dtype0
�
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:  *
dtype0
�
Adam/conv1d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv1d_1/bias/v
y
(Adam/conv1d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/bias/v*
_output_shapes
: *
dtype0
�
Adam/conv1d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv1d_1/kernel/v
�
*Adam/conv1d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/kernel/v*"
_output_shapes
: *
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

: *
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
: *
dtype0
�
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:  *
dtype0
�
Adam/conv1d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv1d_1/bias/m
y
(Adam/conv1d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/bias/m*
_output_shapes
: *
dtype0
�
Adam/conv1d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv1d_1/kernel/m
�
*Adam/conv1d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/kernel/m*"
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

: *
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
: *
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:  *
dtype0
r
conv1d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1d_1/bias
k
!conv1d_1/bias/Read/ReadVariableOpReadVariableOpconv1d_1/bias*
_output_shapes
: *
dtype0
~
conv1d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv1d_1/kernel
w
#conv1d_1/kernel/Read/ReadVariableOpReadVariableOpconv1d_1/kernel*"
_output_shapes
: *
dtype0
�
serving_default_conv1d_1_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv1d_1_inputconv1d_1/kernelconv1d_1/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_828789

NoOpNoOp
�,
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�,
value�,B�, B�,
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias*
.
0
1
2
3
$4
%5*
.
0
1
2
3
$4
%5*
* 
�
&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
6
+trace_0
,trace_1
-trace_2
.trace_3* 
6
/trace_0
0trace_1
1trace_2
2trace_3* 
* 
�
3iter

4beta_1

5beta_2
	6decay
7learning_ratemSmTmUmV$mW%mXvYvZv[v\$v]%v^*

8serving_default* 

0
1*

0
1*
* 
�
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

>trace_0* 

?trace_0* 
_Y
VARIABLE_VALUEconv1d_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1d_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

0
1*
* 
�
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Etrace_0* 

Ftrace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

$0
%1*

$0
%1*
* 
�
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

Ltrace_0* 

Mtrace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

N0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
O	variables
P	keras_api
	Qtotal
	Rcount*

Q0
R1*

O	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/conv1d_1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv1d_1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/conv1d_1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv1d_1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv1d_1/kernel/Read/ReadVariableOp!conv1d_1/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/conv1d_1/kernel/m/Read/ReadVariableOp(Adam/conv1d_1/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp*Adam/conv1d_1/kernel/v/Read/ReadVariableOp(Adam/conv1d_1/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst*&
Tin
2	*
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
GPU 2J 8� *(
f#R!
__inference__traced_save_829163
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_1/kernelconv1d_1/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/conv1d_1/kernel/mAdam/conv1d_1/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/conv1d_1/kernel/vAdam/conv1d_1/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*%
Tin
2*
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
GPU 2J 8� *+
f&R$
"__inference__traced_restore_829248��
�
�
D__inference_conv1d_1_layer_call_and_return_conditional_losses_828531

inputsA
+conv1d_expanddims_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: �
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:��������� *
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:��������� e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
C__inference_dense_1_layer_call_and_return_conditional_losses_829065

inputs3
!tensordot_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:��������� �
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
A__inference_dense_layer_call_and_return_conditional_losses_829026

inputs3
!tensordot_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:��������� �
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:��������� e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:��������� z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�8
�

__inference__traced_save_829163
file_prefix.
*savev2_conv1d_1_kernel_read_readvariableop,
(savev2_conv1d_1_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_conv1d_1_kernel_m_read_readvariableop3
/savev2_adam_conv1d_1_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop5
1savev2_adam_conv1d_1_kernel_v_read_readvariableop3
/savev2_adam_conv1d_1_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B �

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv1d_1_kernel_read_readvariableop(savev2_conv1d_1_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_conv1d_1_kernel_m_read_readvariableop/savev2_adam_conv1d_1_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop1savev2_adam_conv1d_1_kernel_v_read_readvariableop/savev2_adam_conv1d_1_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *(
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: : : :  : : :: : : : : : : : : :  : : :: : :  : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
: : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :($
"
_output_shapes
: : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::($
"
_output_shapes
: : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: 
�
�
&__inference_dense_layer_call_fn_828995

inputs
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_828568s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
A__inference_dense_layer_call_and_return_conditional_losses_828568

inputs3
!tensordot_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:��������� �
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:��������� e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:��������� z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
C__inference_dense_1_layer_call_and_return_conditional_losses_828604

inputs3
!tensordot_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:��������� �
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:���������z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
)__inference_conv1d_1_layer_call_fn_828970

inputs
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_828531s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_conv1d_1_layer_call_and_return_conditional_losses_828986

inputsA
+conv1d_expanddims_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: �
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:��������� *
squeeze_dims

���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:��������� e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
H__inference_sequential_2_layer_call_and_return_conditional_losses_828694

inputs%
conv1d_1_828678: 
conv1d_1_828680: 
dense_828683:  
dense_828685:  
dense_1_828688: 
dense_1_828690:
identity�� conv1d_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_1_828678conv1d_1_828680*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_828531�
dense/StatefulPartitionedCallStatefulPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0dense_828683dense_828685*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_828568�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_828688dense_1_828690*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_828604{
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
-__inference_sequential_2_layer_call_fn_828806

inputs
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3: 
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_828611s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_828789
conv1d_1_input
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3: 
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv1d_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_828508s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_nameconv1d_1_input
�	
�
-__inference_sequential_2_layer_call_fn_828626
conv1d_1_input
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3: 
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv1d_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_828611s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_nameconv1d_1_input
�	
�
-__inference_sequential_2_layer_call_fn_828726
conv1d_1_input
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3: 
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv1d_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_828694s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_nameconv1d_1_input
�L
�
H__inference_sequential_2_layer_call_and_return_conditional_losses_828892

inputsJ
4conv1d_1_conv1d_expanddims_1_readvariableop_resource: 6
(conv1d_1_biasadd_readvariableop_resource: 9
'dense_tensordot_readvariableop_resource:  3
%dense_biasadd_readvariableop_resource: ;
)dense_1_tensordot_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:
identity��conv1d_1/BiasAdd/ReadVariableOp�+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp� dense_1/Tensordot/ReadVariableOpi
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_1/Conv1D/ExpandDims
ExpandDimsinputs'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: �
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
�
conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*+
_output_shapes
:��������� *
squeeze_dims

����������
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� f
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*+
_output_shapes
:��������� �
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       `
dense/Tensordot/ShapeShapeconv1d_1/Relu:activations:0*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/transpose	Transposeconv1d_1/Relu:activations:0dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:��������� �
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: _
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:��������� ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� `

dense/ReluReludense/BiasAdd:output:0*
T0*+
_output_shapes
:��������� �
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

: *
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       _
dense_1/Tensordot/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_1/Tensordot/transpose	Transposedense/Relu:activations:0!dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:��������� �
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������c
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������k
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�e
�
"__inference__traced_restore_829248
file_prefix6
 assignvariableop_conv1d_1_kernel: .
 assignvariableop_1_conv1d_1_bias: 1
assignvariableop_2_dense_kernel:  +
assignvariableop_3_dense_bias: 3
!assignvariableop_4_dense_1_kernel: -
assignvariableop_5_dense_1_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: @
*assignvariableop_13_adam_conv1d_1_kernel_m: 6
(assignvariableop_14_adam_conv1d_1_bias_m: 9
'assignvariableop_15_adam_dense_kernel_m:  3
%assignvariableop_16_adam_dense_bias_m: ;
)assignvariableop_17_adam_dense_1_kernel_m: 5
'assignvariableop_18_adam_dense_1_bias_m:@
*assignvariableop_19_adam_conv1d_1_kernel_v: 6
(assignvariableop_20_adam_conv1d_1_bias_v: 9
'assignvariableop_21_adam_dense_kernel_v:  3
%assignvariableop_22_adam_dense_bias_v: ;
)assignvariableop_23_adam_dense_1_kernel_v: 5
'assignvariableop_24_adam_dense_1_bias_v:
identity_26��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp assignvariableop_conv1d_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp*assignvariableop_13_adam_conv1d_1_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp(assignvariableop_14_adam_conv1d_1_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp'assignvariableop_15_adam_dense_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp%assignvariableop_16_adam_dense_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_1_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_dense_1_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_conv1d_1_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_conv1d_1_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_dense_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp%assignvariableop_22_adam_dense_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_1_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_1_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_25Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_26IdentityIdentity_25:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_26Identity_26:output:0*G
_input_shapes6
4: : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242(
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
�
�
(__inference_dense_1_layer_call_fn_829035

inputs
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_828604s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:��������� 
 
_user_specified_nameinputs
�L
�
H__inference_sequential_2_layer_call_and_return_conditional_losses_828961

inputsJ
4conv1d_1_conv1d_expanddims_1_readvariableop_resource: 6
(conv1d_1_biasadd_readvariableop_resource: 9
'dense_tensordot_readvariableop_resource:  3
%dense_biasadd_readvariableop_resource: ;
)dense_1_tensordot_readvariableop_resource: 5
'dense_1_biasadd_readvariableop_resource:
identity��conv1d_1/BiasAdd/ReadVariableOp�+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/Tensordot/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp� dense_1/Tensordot/ReadVariableOpi
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_1/Conv1D/ExpandDims
ExpandDimsinputs'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: �
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
�
conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*+
_output_shapes
:��������� *
squeeze_dims

����������
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� f
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*+
_output_shapes
:��������� �
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       `
dense/Tensordot/ShapeShapeconv1d_1/Relu:activations:0*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense/Tensordot/transpose	Transposeconv1d_1/Relu:activations:0dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:��������� �
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: _
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:��������� ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� `

dense/ReluReludense/BiasAdd:output:0*
T0*+
_output_shapes
:��������� �
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

: *
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       _
dense_1/Tensordot/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_1/Tensordot/transpose	Transposedense/Relu:activations:0!dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:��������� �
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������c
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������k
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
H__inference_sequential_2_layer_call_and_return_conditional_losses_828764
conv1d_1_input%
conv1d_1_828748: 
conv1d_1_828750: 
dense_828753:  
dense_828755:  
dense_1_828758: 
dense_1_828760:
identity�� conv1d_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCallconv1d_1_inputconv1d_1_828748conv1d_1_828750*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_828531�
dense/StatefulPartitionedCallStatefulPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0dense_828753dense_828755*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_828568�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_828758dense_1_828760*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_828604{
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_nameconv1d_1_input
�
�
H__inference_sequential_2_layer_call_and_return_conditional_losses_828745
conv1d_1_input%
conv1d_1_828729: 
conv1d_1_828731: 
dense_828734:  
dense_828736:  
dense_1_828739: 
dense_1_828741:
identity�� conv1d_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCallconv1d_1_inputconv1d_1_828729conv1d_1_828731*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_828531�
dense/StatefulPartitionedCallStatefulPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0dense_828734dense_828736*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_828568�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_828739dense_1_828741*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_828604{
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:[ W
+
_output_shapes
:���������
(
_user_specified_nameconv1d_1_input
�	
�
-__inference_sequential_2_layer_call_fn_828823

inputs
unknown: 
	unknown_0: 
	unknown_1:  
	unknown_2: 
	unknown_3: 
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_2_layer_call_and_return_conditional_losses_828694s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�]
�
!__inference__wrapped_model_828508
conv1d_1_inputW
Asequential_2_conv1d_1_conv1d_expanddims_1_readvariableop_resource: C
5sequential_2_conv1d_1_biasadd_readvariableop_resource: F
4sequential_2_dense_tensordot_readvariableop_resource:  @
2sequential_2_dense_biasadd_readvariableop_resource: H
6sequential_2_dense_1_tensordot_readvariableop_resource: B
4sequential_2_dense_1_biasadd_readvariableop_resource:
identity��,sequential_2/conv1d_1/BiasAdd/ReadVariableOp�8sequential_2/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp�)sequential_2/dense/BiasAdd/ReadVariableOp�+sequential_2/dense/Tensordot/ReadVariableOp�+sequential_2/dense_1/BiasAdd/ReadVariableOp�-sequential_2/dense_1/Tensordot/ReadVariableOpv
+sequential_2/conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
'sequential_2/conv1d_1/Conv1D/ExpandDims
ExpandDimsconv1d_1_input4sequential_2/conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:����������
8sequential_2/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpAsequential_2_conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0o
-sequential_2/conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
)sequential_2/conv1d_1/Conv1D/ExpandDims_1
ExpandDims@sequential_2/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:06sequential_2/conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: �
sequential_2/conv1d_1/Conv1DConv2D0sequential_2/conv1d_1/Conv1D/ExpandDims:output:02sequential_2/conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
�
$sequential_2/conv1d_1/Conv1D/SqueezeSqueeze%sequential_2/conv1d_1/Conv1D:output:0*
T0*+
_output_shapes
:��������� *
squeeze_dims

����������
,sequential_2/conv1d_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv1d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential_2/conv1d_1/BiasAddBiasAdd-sequential_2/conv1d_1/Conv1D/Squeeze:output:04sequential_2/conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� �
sequential_2/conv1d_1/ReluRelu&sequential_2/conv1d_1/BiasAdd:output:0*
T0*+
_output_shapes
:��������� �
+sequential_2/dense/Tensordot/ReadVariableOpReadVariableOp4sequential_2_dense_tensordot_readvariableop_resource*
_output_shapes

:  *
dtype0k
!sequential_2/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:r
!sequential_2/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       z
"sequential_2/dense/Tensordot/ShapeShape(sequential_2/conv1d_1/Relu:activations:0*
T0*
_output_shapes
:l
*sequential_2/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential_2/dense/Tensordot/GatherV2GatherV2+sequential_2/dense/Tensordot/Shape:output:0*sequential_2/dense/Tensordot/free:output:03sequential_2/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
,sequential_2/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential_2/dense/Tensordot/GatherV2_1GatherV2+sequential_2/dense/Tensordot/Shape:output:0*sequential_2/dense/Tensordot/axes:output:05sequential_2/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
"sequential_2/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
!sequential_2/dense/Tensordot/ProdProd.sequential_2/dense/Tensordot/GatherV2:output:0+sequential_2/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$sequential_2/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
#sequential_2/dense/Tensordot/Prod_1Prod0sequential_2/dense/Tensordot/GatherV2_1:output:0-sequential_2/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(sequential_2/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#sequential_2/dense/Tensordot/concatConcatV2*sequential_2/dense/Tensordot/free:output:0*sequential_2/dense/Tensordot/axes:output:01sequential_2/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
"sequential_2/dense/Tensordot/stackPack*sequential_2/dense/Tensordot/Prod:output:0,sequential_2/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
&sequential_2/dense/Tensordot/transpose	Transpose(sequential_2/conv1d_1/Relu:activations:0,sequential_2/dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:��������� �
$sequential_2/dense/Tensordot/ReshapeReshape*sequential_2/dense/Tensordot/transpose:y:0+sequential_2/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
#sequential_2/dense/Tensordot/MatMulMatMul-sequential_2/dense/Tensordot/Reshape:output:03sequential_2/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� n
$sequential_2/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: l
*sequential_2/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential_2/dense/Tensordot/concat_1ConcatV2.sequential_2/dense/Tensordot/GatherV2:output:0-sequential_2/dense/Tensordot/Const_2:output:03sequential_2/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
sequential_2/dense/TensordotReshape-sequential_2/dense/Tensordot/MatMul:product:0.sequential_2/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:��������� �
)sequential_2/dense/BiasAdd/ReadVariableOpReadVariableOp2sequential_2_dense_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential_2/dense/BiasAddBiasAdd%sequential_2/dense/Tensordot:output:01sequential_2/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:��������� z
sequential_2/dense/ReluRelu#sequential_2/dense/BiasAdd:output:0*
T0*+
_output_shapes
:��������� �
-sequential_2/dense_1/Tensordot/ReadVariableOpReadVariableOp6sequential_2_dense_1_tensordot_readvariableop_resource*
_output_shapes

: *
dtype0m
#sequential_2/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_2/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       y
$sequential_2/dense_1/Tensordot/ShapeShape%sequential_2/dense/Relu:activations:0*
T0*
_output_shapes
:n
,sequential_2/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential_2/dense_1/Tensordot/GatherV2GatherV2-sequential_2/dense_1/Tensordot/Shape:output:0,sequential_2/dense_1/Tensordot/free:output:05sequential_2/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_2/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
)sequential_2/dense_1/Tensordot/GatherV2_1GatherV2-sequential_2/dense_1/Tensordot/Shape:output:0,sequential_2/dense_1/Tensordot/axes:output:07sequential_2/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_2/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
#sequential_2/dense_1/Tensordot/ProdProd0sequential_2/dense_1/Tensordot/GatherV2:output:0-sequential_2/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_2/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
%sequential_2/dense_1/Tensordot/Prod_1Prod2sequential_2/dense_1/Tensordot/GatherV2_1:output:0/sequential_2/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_2/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential_2/dense_1/Tensordot/concatConcatV2,sequential_2/dense_1/Tensordot/free:output:0,sequential_2/dense_1/Tensordot/axes:output:03sequential_2/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
$sequential_2/dense_1/Tensordot/stackPack,sequential_2/dense_1/Tensordot/Prod:output:0.sequential_2/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
(sequential_2/dense_1/Tensordot/transpose	Transpose%sequential_2/dense/Relu:activations:0.sequential_2/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:��������� �
&sequential_2/dense_1/Tensordot/ReshapeReshape,sequential_2/dense_1/Tensordot/transpose:y:0-sequential_2/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
%sequential_2/dense_1/Tensordot/MatMulMatMul/sequential_2/dense_1/Tensordot/Reshape:output:05sequential_2/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������p
&sequential_2/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:n
,sequential_2/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential_2/dense_1/Tensordot/concat_1ConcatV20sequential_2/dense_1/Tensordot/GatherV2:output:0/sequential_2/dense_1/Tensordot/Const_2:output:05sequential_2/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
sequential_2/dense_1/TensordotReshape/sequential_2/dense_1/Tensordot/MatMul:product:00sequential_2/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:����������
+sequential_2/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_2/dense_1/BiasAddBiasAdd'sequential_2/dense_1/Tensordot:output:03sequential_2/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������x
IdentityIdentity%sequential_2/dense_1/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp-^sequential_2/conv1d_1/BiasAdd/ReadVariableOp9^sequential_2/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp*^sequential_2/dense/BiasAdd/ReadVariableOp,^sequential_2/dense/Tensordot/ReadVariableOp,^sequential_2/dense_1/BiasAdd/ReadVariableOp.^sequential_2/dense_1/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2\
,sequential_2/conv1d_1/BiasAdd/ReadVariableOp,sequential_2/conv1d_1/BiasAdd/ReadVariableOp2t
8sequential_2/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp8sequential_2/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2V
)sequential_2/dense/BiasAdd/ReadVariableOp)sequential_2/dense/BiasAdd/ReadVariableOp2Z
+sequential_2/dense/Tensordot/ReadVariableOp+sequential_2/dense/Tensordot/ReadVariableOp2Z
+sequential_2/dense_1/BiasAdd/ReadVariableOp+sequential_2/dense_1/BiasAdd/ReadVariableOp2^
-sequential_2/dense_1/Tensordot/ReadVariableOp-sequential_2/dense_1/Tensordot/ReadVariableOp:[ W
+
_output_shapes
:���������
(
_user_specified_nameconv1d_1_input
�
�
H__inference_sequential_2_layer_call_and_return_conditional_losses_828611

inputs%
conv1d_1_828532: 
conv1d_1_828534: 
dense_828569:  
dense_828571:  
dense_1_828605: 
dense_1_828607:
identity�� conv1d_1/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_1_828532conv1d_1_828534*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_828531�
dense/StatefulPartitionedCallStatefulPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0dense_828569dense_828571*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_828568�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_828605dense_1_828607*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_828604{
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:����������
NoOpNoOp!^conv1d_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs"�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
M
conv1d_1_input;
 serving_default_conv1d_1_input:0���������?
dense_14
StatefulPartitionedCall:0���������tensorflow/serving/predict:�n
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias"
_tf_keras_layer
J
0
1
2
3
$4
%5"
trackable_list_wrapper
J
0
1
2
3
$4
%5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
�
+trace_0
,trace_1
-trace_2
.trace_32�
-__inference_sequential_2_layer_call_fn_828626
-__inference_sequential_2_layer_call_fn_828806
-__inference_sequential_2_layer_call_fn_828823
-__inference_sequential_2_layer_call_fn_828726�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z+trace_0z,trace_1z-trace_2z.trace_3
�
/trace_0
0trace_1
1trace_2
2trace_32�
H__inference_sequential_2_layer_call_and_return_conditional_losses_828892
H__inference_sequential_2_layer_call_and_return_conditional_losses_828961
H__inference_sequential_2_layer_call_and_return_conditional_losses_828745
H__inference_sequential_2_layer_call_and_return_conditional_losses_828764�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z/trace_0z0trace_1z1trace_2z2trace_3
�B�
!__inference__wrapped_model_828508conv1d_1_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
3iter

4beta_1

5beta_2
	6decay
7learning_ratemSmTmUmV$mW%mXvYvZv[v\$v]%v^"
	optimizer
,
8serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
>trace_02�
)__inference_conv1d_1_layer_call_fn_828970�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z>trace_0
�
?trace_02�
D__inference_conv1d_1_layer_call_and_return_conditional_losses_828986�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z?trace_0
%:# 2conv1d_1/kernel
: 2conv1d_1/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Etrace_02�
&__inference_dense_layer_call_fn_828995�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zEtrace_0
�
Ftrace_02�
A__inference_dense_layer_call_and_return_conditional_losses_829026�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zFtrace_0
:  2dense/kernel
: 2
dense/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
�
Ltrace_02�
(__inference_dense_1_layer_call_fn_829035�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zLtrace_0
�
Mtrace_02�
C__inference_dense_1_layer_call_and_return_conditional_losses_829065�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zMtrace_0
 : 2dense_1/kernel
:2dense_1/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
'
N0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
-__inference_sequential_2_layer_call_fn_828626conv1d_1_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
-__inference_sequential_2_layer_call_fn_828806inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
-__inference_sequential_2_layer_call_fn_828823inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
-__inference_sequential_2_layer_call_fn_828726conv1d_1_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_sequential_2_layer_call_and_return_conditional_losses_828892inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_sequential_2_layer_call_and_return_conditional_losses_828961inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_sequential_2_layer_call_and_return_conditional_losses_828745conv1d_1_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_sequential_2_layer_call_and_return_conditional_losses_828764conv1d_1_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
$__inference_signature_wrapper_828789conv1d_1_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_conv1d_1_layer_call_fn_828970inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv1d_1_layer_call_and_return_conditional_losses_828986inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
&__inference_dense_layer_call_fn_828995inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_dense_layer_call_and_return_conditional_losses_829026inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
(__inference_dense_1_layer_call_fn_829035inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_1_layer_call_and_return_conditional_losses_829065inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
N
O	variables
P	keras_api
	Qtotal
	Rcount"
_tf_keras_metric
.
Q0
R1"
trackable_list_wrapper
-
O	variables"
_generic_user_object
:  (2total
:  (2count
*:( 2Adam/conv1d_1/kernel/m
 : 2Adam/conv1d_1/bias/m
#:!  2Adam/dense/kernel/m
: 2Adam/dense/bias/m
%:# 2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
*:( 2Adam/conv1d_1/kernel/v
 : 2Adam/conv1d_1/bias/v
#:!  2Adam/dense/kernel/v
: 2Adam/dense/bias/v
%:# 2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v�
!__inference__wrapped_model_828508|$%;�8
1�.
,�)
conv1d_1_input���������
� "5�2
0
dense_1%�"
dense_1����������
D__inference_conv1d_1_layer_call_and_return_conditional_losses_828986d3�0
)�&
$�!
inputs���������
� ")�&
�
0��������� 
� �
)__inference_conv1d_1_layer_call_fn_828970W3�0
)�&
$�!
inputs���������
� "���������� �
C__inference_dense_1_layer_call_and_return_conditional_losses_829065d$%3�0
)�&
$�!
inputs��������� 
� ")�&
�
0���������
� �
(__inference_dense_1_layer_call_fn_829035W$%3�0
)�&
$�!
inputs��������� 
� "�����������
A__inference_dense_layer_call_and_return_conditional_losses_829026d3�0
)�&
$�!
inputs��������� 
� ")�&
�
0��������� 
� �
&__inference_dense_layer_call_fn_828995W3�0
)�&
$�!
inputs��������� 
� "���������� �
H__inference_sequential_2_layer_call_and_return_conditional_losses_828745x$%C�@
9�6
,�)
conv1d_1_input���������
p 

 
� ")�&
�
0���������
� �
H__inference_sequential_2_layer_call_and_return_conditional_losses_828764x$%C�@
9�6
,�)
conv1d_1_input���������
p

 
� ")�&
�
0���������
� �
H__inference_sequential_2_layer_call_and_return_conditional_losses_828892p$%;�8
1�.
$�!
inputs���������
p 

 
� ")�&
�
0���������
� �
H__inference_sequential_2_layer_call_and_return_conditional_losses_828961p$%;�8
1�.
$�!
inputs���������
p

 
� ")�&
�
0���������
� �
-__inference_sequential_2_layer_call_fn_828626k$%C�@
9�6
,�)
conv1d_1_input���������
p 

 
� "�����������
-__inference_sequential_2_layer_call_fn_828726k$%C�@
9�6
,�)
conv1d_1_input���������
p

 
� "�����������
-__inference_sequential_2_layer_call_fn_828806c$%;�8
1�.
$�!
inputs���������
p 

 
� "�����������
-__inference_sequential_2_layer_call_fn_828823c$%;�8
1�.
$�!
inputs���������
p

 
� "�����������
$__inference_signature_wrapper_828789�$%M�J
� 
C�@
>
conv1d_1_input,�)
conv1d_1_input���������"5�2
0
dense_1%�"
dense_1���������