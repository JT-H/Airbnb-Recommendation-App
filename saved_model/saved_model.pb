¶ю
«-Ъ-
:
Add
x"T
y"T
z"T"
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
S
	Bucketize

input"T

output"
Ttype:
2	"

boundarieslist(float)
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
≠
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
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
k
NotEqual
x"T
y"T
z
"
Ttype:
2	
"$
incompatible_shape_errorbool(Р
М
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint€€€€€€€€€"	
Ttype"
TItype0	:
2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
0
Sigmoid
x"T
y"T"
Ttype:

2
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
р
SparseCross
indices	*N
values2sparse_types
shapes	*N
dense_inputs2dense_types
output_indices	
output_values"out_type
output_shape	"

Nint("
hashed_outputbool"
num_bucketsint("
hash_keyint"$
sparse_types
list(type)(:
2	"#
dense_types
list(type)(:
2	"
out_typetype:
2	"
internal_typetype:
2	
Ј
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
z
SparseSegmentMean	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2"
Tidxtype0:
2	
Љ
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
А
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.15.02v1.15.0-rc3-22-g590d6ee8ёЯ

global_step/Initializer/zerosConst*
dtype0	*
_output_shapes
: *
value	B	 R *
_class
loc:@global_step
k
global_step
VariableV2*
shape: *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
Й
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_class
loc:@global_step*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
f
PlaceholderPlaceholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
h
Placeholder_1Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
h
Placeholder_2Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
h
Placeholder_3Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
h
Placeholder_4Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
h
Placeholder_5Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
h
Placeholder_6Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
h
Placeholder_7Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
h
Placeholder_8Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
h
Placeholder_9Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
i
Placeholder_10Placeholder*
dtype0	*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_11Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_12Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_13Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_14Placeholder*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€*
dtype0
i
Placeholder_15Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
i
Placeholder_16Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_17Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_18Placeholder*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€*
dtype0
i
Placeholder_19Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
i
Placeholder_20Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_21Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_22Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_23Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_24Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_25Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_26Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
i
Placeholder_27Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_28Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
i
Placeholder_29Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_30Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_31Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_32Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_33Placeholder*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€*
dtype0
i
Placeholder_34Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_35Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_36Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_37Placeholder*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€*
dtype0
i
Placeholder_38Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_39Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
i
Placeholder_40Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
i
Placeholder_41Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_42Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_43Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_44Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
i
Placeholder_45Placeholder*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€*
dtype0
i
Placeholder_46Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_47Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
i
Placeholder_48Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_49Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
i
Placeholder_50Placeholder*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€*
dtype0
i
Placeholder_51Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
i
Placeholder_52Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
i
Placeholder_53Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
i
Placeholder_54Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_55Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_56Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
i
Placeholder_57Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_58Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
i
Placeholder_59Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_60Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_61Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_62Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_63Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_64Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_65Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_66Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
i
Placeholder_67Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_68Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_69Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
i
Placeholder_70Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_71Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_72Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
i
Placeholder_73Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_74Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_75Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_76Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_77Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_78Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
i
Placeholder_79Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_80Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
i
Placeholder_81Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_82Placeholder*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€*
dtype0
i
Placeholder_83Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_84Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_85Placeholder*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€*
dtype0
i
Placeholder_86Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_87Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
i
Placeholder_88Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_89Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_90Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
i
Placeholder_91Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
i
Placeholder_92Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_93Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_94Placeholder*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€*
dtype0
i
Placeholder_95Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_96Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_97Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
i
Placeholder_98Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
i
Placeholder_99Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
j
Placeholder_100Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
j
Placeholder_101Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
j
Placeholder_102Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
j
Placeholder_103Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
j
Placeholder_104Placeholder*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€*
dtype0
j
Placeholder_105Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
j
Placeholder_106Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
j
Placeholder_107Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
j
Placeholder_108Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
j
Placeholder_109Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
j
Placeholder_110Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
j
Placeholder_111Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
j
Placeholder_112Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
j
Placeholder_113Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
j
Placeholder_114Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
j
Placeholder_115Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
j
Placeholder_116Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
j
Placeholder_117Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
j
Placeholder_118Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
j
Placeholder_119Placeholder*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€*
dtype0
j
Placeholder_120Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
j
Placeholder_121Placeholder*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€*
dtype0
j
Placeholder_122Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
j
Placeholder_123Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
j
Placeholder_124Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
j
Placeholder_125Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
j
Placeholder_126Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
j
Placeholder_127Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
j
Placeholder_128Placeholder*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
j
Placeholder_129Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
j
Placeholder_130Placeholder*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
Y
ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
g

ExpandDims
ExpandDimsPlaceholderExpandDims/dim*
T0*'
_output_shapes
:€€€€€€€€€
[
ExpandDims_1/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
m
ExpandDims_1
ExpandDimsPlaceholder_1ExpandDims_1/dim*
T0*'
_output_shapes
:€€€€€€€€€
[
ExpandDims_2/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
m
ExpandDims_2
ExpandDimsPlaceholder_2ExpandDims_2/dim*
T0*'
_output_shapes
:€€€€€€€€€
[
ExpandDims_3/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
m
ExpandDims_3
ExpandDimsPlaceholder_3ExpandDims_3/dim*'
_output_shapes
:€€€€€€€€€*
T0
[
ExpandDims_4/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
m
ExpandDims_4
ExpandDimsPlaceholder_4ExpandDims_4/dim*
T0*'
_output_shapes
:€€€€€€€€€
[
ExpandDims_5/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
m
ExpandDims_5
ExpandDimsPlaceholder_5ExpandDims_5/dim*
T0*'
_output_shapes
:€€€€€€€€€
[
ExpandDims_6/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
m
ExpandDims_6
ExpandDimsPlaceholder_6ExpandDims_6/dim*'
_output_shapes
:€€€€€€€€€*
T0
[
ExpandDims_7/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
m
ExpandDims_7
ExpandDimsPlaceholder_7ExpandDims_7/dim*
T0*'
_output_shapes
:€€€€€€€€€
[
ExpandDims_8/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
m
ExpandDims_8
ExpandDimsPlaceholder_8ExpandDims_8/dim*
T0*'
_output_shapes
:€€€€€€€€€
[
ExpandDims_9/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
m
ExpandDims_9
ExpandDimsPlaceholder_9ExpandDims_9/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_10/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_10
ExpandDimsPlaceholder_10ExpandDims_10/dim*'
_output_shapes
:€€€€€€€€€*
T0	
\
ExpandDims_11/dimConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
p
ExpandDims_11
ExpandDimsPlaceholder_11ExpandDims_11/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_12/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_12
ExpandDimsPlaceholder_12ExpandDims_12/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_13/dimConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
p
ExpandDims_13
ExpandDimsPlaceholder_13ExpandDims_13/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_14/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_14
ExpandDimsPlaceholder_14ExpandDims_14/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_15/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_15
ExpandDimsPlaceholder_15ExpandDims_15/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_16/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_16
ExpandDimsPlaceholder_16ExpandDims_16/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_17/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_17
ExpandDimsPlaceholder_17ExpandDims_17/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_18/dimConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
p
ExpandDims_18
ExpandDimsPlaceholder_18ExpandDims_18/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_19/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
p
ExpandDims_19
ExpandDimsPlaceholder_19ExpandDims_19/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_20/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
p
ExpandDims_20
ExpandDimsPlaceholder_20ExpandDims_20/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_21/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_21
ExpandDimsPlaceholder_21ExpandDims_21/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_22/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_22
ExpandDimsPlaceholder_22ExpandDims_22/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_23/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_23
ExpandDimsPlaceholder_23ExpandDims_23/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_24/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_24
ExpandDimsPlaceholder_24ExpandDims_24/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_25/dimConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
p
ExpandDims_25
ExpandDimsPlaceholder_25ExpandDims_25/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_26/dimConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
p
ExpandDims_26
ExpandDimsPlaceholder_26ExpandDims_26/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_27/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
p
ExpandDims_27
ExpandDimsPlaceholder_27ExpandDims_27/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_28/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_28
ExpandDimsPlaceholder_28ExpandDims_28/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_29/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_29
ExpandDimsPlaceholder_29ExpandDims_29/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_30/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_30
ExpandDimsPlaceholder_30ExpandDims_30/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_31/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_31
ExpandDimsPlaceholder_31ExpandDims_31/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_32/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_32
ExpandDimsPlaceholder_32ExpandDims_32/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_33/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_33
ExpandDimsPlaceholder_33ExpandDims_33/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_34/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_34
ExpandDimsPlaceholder_34ExpandDims_34/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_35/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_35
ExpandDimsPlaceholder_35ExpandDims_35/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_36/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_36
ExpandDimsPlaceholder_36ExpandDims_36/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_37/dimConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
p
ExpandDims_37
ExpandDimsPlaceholder_37ExpandDims_37/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_38/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_38
ExpandDimsPlaceholder_38ExpandDims_38/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_39/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_39
ExpandDimsPlaceholder_39ExpandDims_39/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_40/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_40
ExpandDimsPlaceholder_40ExpandDims_40/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_41/dimConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
p
ExpandDims_41
ExpandDimsPlaceholder_41ExpandDims_41/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_42/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_42
ExpandDimsPlaceholder_42ExpandDims_42/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_43/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_43
ExpandDimsPlaceholder_43ExpandDims_43/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_44/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_44
ExpandDimsPlaceholder_44ExpandDims_44/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_45/dimConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
p
ExpandDims_45
ExpandDimsPlaceholder_45ExpandDims_45/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_46/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_46
ExpandDimsPlaceholder_46ExpandDims_46/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_47/dimConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
p
ExpandDims_47
ExpandDimsPlaceholder_47ExpandDims_47/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_48/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_48
ExpandDimsPlaceholder_48ExpandDims_48/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_49/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_49
ExpandDimsPlaceholder_49ExpandDims_49/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_50/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_50
ExpandDimsPlaceholder_50ExpandDims_50/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_51/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_51
ExpandDimsPlaceholder_51ExpandDims_51/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_52/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_52
ExpandDimsPlaceholder_52ExpandDims_52/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_53/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
p
ExpandDims_53
ExpandDimsPlaceholder_53ExpandDims_53/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_54/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_54
ExpandDimsPlaceholder_54ExpandDims_54/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_55/dimConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
p
ExpandDims_55
ExpandDimsPlaceholder_55ExpandDims_55/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_56/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
p
ExpandDims_56
ExpandDimsPlaceholder_56ExpandDims_56/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_57/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_57
ExpandDimsPlaceholder_57ExpandDims_57/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_58/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_58
ExpandDimsPlaceholder_58ExpandDims_58/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_59/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
p
ExpandDims_59
ExpandDimsPlaceholder_59ExpandDims_59/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_60/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_60
ExpandDimsPlaceholder_60ExpandDims_60/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_61/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
p
ExpandDims_61
ExpandDimsPlaceholder_61ExpandDims_61/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_62/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_62
ExpandDimsPlaceholder_62ExpandDims_62/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_63/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
p
ExpandDims_63
ExpandDimsPlaceholder_63ExpandDims_63/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_64/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_64
ExpandDimsPlaceholder_64ExpandDims_64/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_65/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_65
ExpandDimsPlaceholder_65ExpandDims_65/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_66/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_66
ExpandDimsPlaceholder_66ExpandDims_66/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_67/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_67
ExpandDimsPlaceholder_67ExpandDims_67/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_68/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_68
ExpandDimsPlaceholder_68ExpandDims_68/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_69/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_69
ExpandDimsPlaceholder_69ExpandDims_69/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_70/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_70
ExpandDimsPlaceholder_70ExpandDims_70/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_71/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_71
ExpandDimsPlaceholder_71ExpandDims_71/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_72/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_72
ExpandDimsPlaceholder_72ExpandDims_72/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_73/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
p
ExpandDims_73
ExpandDimsPlaceholder_73ExpandDims_73/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_74/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_74
ExpandDimsPlaceholder_74ExpandDims_74/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_75/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_75
ExpandDimsPlaceholder_75ExpandDims_75/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_76/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_76
ExpandDimsPlaceholder_76ExpandDims_76/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_77/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_77
ExpandDimsPlaceholder_77ExpandDims_77/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_78/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_78
ExpandDimsPlaceholder_78ExpandDims_78/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_79/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_79
ExpandDimsPlaceholder_79ExpandDims_79/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_80/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_80
ExpandDimsPlaceholder_80ExpandDims_80/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_81/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_81
ExpandDimsPlaceholder_81ExpandDims_81/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_82/dimConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
p
ExpandDims_82
ExpandDimsPlaceholder_82ExpandDims_82/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_83/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_83
ExpandDimsPlaceholder_83ExpandDims_83/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_84/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_84
ExpandDimsPlaceholder_84ExpandDims_84/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_85/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_85
ExpandDimsPlaceholder_85ExpandDims_85/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_86/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_86
ExpandDimsPlaceholder_86ExpandDims_86/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_87/dimConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
p
ExpandDims_87
ExpandDimsPlaceholder_87ExpandDims_87/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_88/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_88
ExpandDimsPlaceholder_88ExpandDims_88/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_89/dimConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
p
ExpandDims_89
ExpandDimsPlaceholder_89ExpandDims_89/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_90/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_90
ExpandDimsPlaceholder_90ExpandDims_90/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_91/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
p
ExpandDims_91
ExpandDimsPlaceholder_91ExpandDims_91/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_92/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_92
ExpandDimsPlaceholder_92ExpandDims_92/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_93/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_93
ExpandDimsPlaceholder_93ExpandDims_93/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_94/dimConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
p
ExpandDims_94
ExpandDimsPlaceholder_94ExpandDims_94/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_95/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
p
ExpandDims_95
ExpandDimsPlaceholder_95ExpandDims_95/dim*'
_output_shapes
:€€€€€€€€€*
T0
\
ExpandDims_96/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_96
ExpandDimsPlaceholder_96ExpandDims_96/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_97/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_97
ExpandDimsPlaceholder_97ExpandDims_97/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_98/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
p
ExpandDims_98
ExpandDimsPlaceholder_98ExpandDims_98/dim*
T0*'
_output_shapes
:€€€€€€€€€
\
ExpandDims_99/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
p
ExpandDims_99
ExpandDimsPlaceholder_99ExpandDims_99/dim*
T0*'
_output_shapes
:€€€€€€€€€
]
ExpandDims_100/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
s
ExpandDims_100
ExpandDimsPlaceholder_100ExpandDims_100/dim*
T0*'
_output_shapes
:€€€€€€€€€
]
ExpandDims_101/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
s
ExpandDims_101
ExpandDimsPlaceholder_101ExpandDims_101/dim*
T0*'
_output_shapes
:€€€€€€€€€
]
ExpandDims_102/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
s
ExpandDims_102
ExpandDimsPlaceholder_102ExpandDims_102/dim*
T0*'
_output_shapes
:€€€€€€€€€
]
ExpandDims_103/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
s
ExpandDims_103
ExpandDimsPlaceholder_103ExpandDims_103/dim*'
_output_shapes
:€€€€€€€€€*
T0
]
ExpandDims_104/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
s
ExpandDims_104
ExpandDimsPlaceholder_104ExpandDims_104/dim*'
_output_shapes
:€€€€€€€€€*
T0
]
ExpandDims_105/dimConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
s
ExpandDims_105
ExpandDimsPlaceholder_105ExpandDims_105/dim*'
_output_shapes
:€€€€€€€€€*
T0
]
ExpandDims_106/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
s
ExpandDims_106
ExpandDimsPlaceholder_106ExpandDims_106/dim*
T0*'
_output_shapes
:€€€€€€€€€
]
ExpandDims_107/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
s
ExpandDims_107
ExpandDimsPlaceholder_107ExpandDims_107/dim*
T0*'
_output_shapes
:€€€€€€€€€
]
ExpandDims_108/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
s
ExpandDims_108
ExpandDimsPlaceholder_108ExpandDims_108/dim*
T0*'
_output_shapes
:€€€€€€€€€
]
ExpandDims_109/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
s
ExpandDims_109
ExpandDimsPlaceholder_109ExpandDims_109/dim*
T0*'
_output_shapes
:€€€€€€€€€
]
ExpandDims_110/dimConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
s
ExpandDims_110
ExpandDimsPlaceholder_110ExpandDims_110/dim*
T0*'
_output_shapes
:€€€€€€€€€
]
ExpandDims_111/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
s
ExpandDims_111
ExpandDimsPlaceholder_111ExpandDims_111/dim*
T0*'
_output_shapes
:€€€€€€€€€
]
ExpandDims_112/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
s
ExpandDims_112
ExpandDimsPlaceholder_112ExpandDims_112/dim*'
_output_shapes
:€€€€€€€€€*
T0
]
ExpandDims_113/dimConst*
_output_shapes
: *
valueB :
€€€€€€€€€*
dtype0
s
ExpandDims_113
ExpandDimsPlaceholder_113ExpandDims_113/dim*
T0*'
_output_shapes
:€€€€€€€€€
]
ExpandDims_114/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
s
ExpandDims_114
ExpandDimsPlaceholder_114ExpandDims_114/dim*
T0*'
_output_shapes
:€€€€€€€€€
]
ExpandDims_115/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
s
ExpandDims_115
ExpandDimsPlaceholder_115ExpandDims_115/dim*
T0*'
_output_shapes
:€€€€€€€€€
]
ExpandDims_116/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
s
ExpandDims_116
ExpandDimsPlaceholder_116ExpandDims_116/dim*'
_output_shapes
:€€€€€€€€€*
T0
]
ExpandDims_117/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
s
ExpandDims_117
ExpandDimsPlaceholder_117ExpandDims_117/dim*
T0*'
_output_shapes
:€€€€€€€€€
]
ExpandDims_118/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
s
ExpandDims_118
ExpandDimsPlaceholder_118ExpandDims_118/dim*'
_output_shapes
:€€€€€€€€€*
T0
]
ExpandDims_119/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
s
ExpandDims_119
ExpandDimsPlaceholder_119ExpandDims_119/dim*
T0*'
_output_shapes
:€€€€€€€€€
]
ExpandDims_120/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
s
ExpandDims_120
ExpandDimsPlaceholder_120ExpandDims_120/dim*
T0*'
_output_shapes
:€€€€€€€€€
]
ExpandDims_121/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
s
ExpandDims_121
ExpandDimsPlaceholder_121ExpandDims_121/dim*
T0*'
_output_shapes
:€€€€€€€€€
]
ExpandDims_122/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
s
ExpandDims_122
ExpandDimsPlaceholder_122ExpandDims_122/dim*
T0*'
_output_shapes
:€€€€€€€€€
]
ExpandDims_123/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
s
ExpandDims_123
ExpandDimsPlaceholder_123ExpandDims_123/dim*
T0*'
_output_shapes
:€€€€€€€€€
]
ExpandDims_124/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
s
ExpandDims_124
ExpandDimsPlaceholder_124ExpandDims_124/dim*'
_output_shapes
:€€€€€€€€€*
T0
]
ExpandDims_125/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
s
ExpandDims_125
ExpandDimsPlaceholder_125ExpandDims_125/dim*
T0*'
_output_shapes
:€€€€€€€€€
]
ExpandDims_126/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
s
ExpandDims_126
ExpandDimsPlaceholder_126ExpandDims_126/dim*
T0*'
_output_shapes
:€€€€€€€€€
]
ExpandDims_127/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
s
ExpandDims_127
ExpandDimsPlaceholder_127ExpandDims_127/dim*
T0*'
_output_shapes
:€€€€€€€€€
]
ExpandDims_128/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
s
ExpandDims_128
ExpandDimsPlaceholder_128ExpandDims_128/dim*
T0*'
_output_shapes
:€€€€€€€€€
]
ExpandDims_129/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
s
ExpandDims_129
ExpandDimsPlaceholder_129ExpandDims_129/dim*
T0*'
_output_shapes
:€€€€€€€€€
]
ExpandDims_130/dimConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
s
ExpandDims_130
ExpandDimsPlaceholder_130ExpandDims_130/dim*'
_output_shapes
:€€€€€€€€€*
T0
y
0input_layer/calculated_host_listings_count/sub/yConst*
valueB 2фSЂNHЬ.@*
dtype0*
_output_shapes
: 
І
.input_layer/calculated_host_listings_count/subSubExpandDims_40input_layer/calculated_host_listings_count/sub/y*'
_output_shapes
:€€€€€€€€€*
T0
}
4input_layer/calculated_host_listings_count/truediv/yConst*
dtype0*
_output_shapes
: *
valueB 2≠s#ьƒ|>@
’
2input_layer/calculated_host_listings_count/truedivRealDiv.input_layer/calculated_host_listings_count/sub4input_layer/calculated_host_listings_count/truediv/y*
T0*'
_output_shapes
:€€€€€€€€€
ђ
/input_layer/calculated_host_listings_count/CastCast2input_layer/calculated_host_listings_count/truediv*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
П
0input_layer/calculated_host_listings_count/ShapeShape/input_layer/calculated_host_listings_count/Cast*
T0*
_output_shapes
:
И
>input_layer/calculated_host_listings_count/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
К
@input_layer/calculated_host_listings_count/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
К
@input_layer/calculated_host_listings_count/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Д
8input_layer/calculated_host_listings_count/strided_sliceStridedSlice0input_layer/calculated_host_listings_count/Shape>input_layer/calculated_host_listings_count/strided_slice/stack@input_layer/calculated_host_listings_count/strided_slice/stack_1@input_layer/calculated_host_listings_count/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
|
:input_layer/calculated_host_listings_count/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
д
8input_layer/calculated_host_listings_count/Reshape/shapePack8input_layer/calculated_host_listings_count/strided_slice:input_layer/calculated_host_listings_count/Reshape/shape/1*
T0*
N*
_output_shapes
:
Џ
2input_layer/calculated_host_listings_count/ReshapeReshape/input_layer/calculated_host_listings_count/Cast8input_layer/calculated_host_listings_count/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
С
Finput_layer/host_is_superhost_indicator/to_sparse_input/ignore_value/xConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
ƒ
Dinput_layer/host_is_superhost_indicator/to_sparse_input/ignore_valueCastFinput_layer/host_is_superhost_indicator/to_sparse_input/ignore_value/x*

SrcT0*
_output_shapes
: *

DstT0	
”
@input_layer/host_is_superhost_indicator/to_sparse_input/NotEqualNotEqualExpandDims_10Dinput_layer/host_is_superhost_indicator/to_sparse_input/ignore_value*
T0	*'
_output_shapes
:€€€€€€€€€
≥
?input_layer/host_is_superhost_indicator/to_sparse_input/indicesWhere@input_layer/host_is_superhost_indicator/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
ё
>input_layer/host_is_superhost_indicator/to_sparse_input/valuesGatherNdExpandDims_10?input_layer/host_is_superhost_indicator/to_sparse_input/indices*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Tindices0	
Р
Cinput_layer/host_is_superhost_indicator/to_sparse_input/dense_shapeShapeExpandDims_10*
T0	*
out_type0	*
_output_shapes
:
w
5input_layer/host_is_superhost_indicator/num_buckets/xConst*
value	B :*
dtype0*
_output_shapes
: 
Ґ
3input_layer/host_is_superhost_indicator/num_bucketsCast5input_layer/host_is_superhost_indicator/num_buckets/x*
_output_shapes
: *

DstT0	*

SrcT0
p
.input_layer/host_is_superhost_indicator/zero/xConst*
value	B : *
dtype0*
_output_shapes
: 
Ф
,input_layer/host_is_superhost_indicator/zeroCast.input_layer/host_is_superhost_indicator/zero/x*
_output_shapes
: *

DstT0	*

SrcT0
ф
Iinput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/LessLess>input_layer/host_is_superhost_indicator/to_sparse_input/values3input_layer/host_is_superhost_indicator/num_buckets*
T0	*#
_output_shapes
:€€€€€€€€€
Ф
Jinput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ю
Hinput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/AllAllIinput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/LessJinput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Const*
_output_shapes
: 
г
Qinput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/ConstConst*b
valueYBW BQBucket index for categorical column "host_is_superhost" exceeds number of buckets*
dtype0*
_output_shapes
: 
Я
^input_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/SwitchSwitchHinput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/AllHinput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/All*
_output_shapes
: : *
T0

п
`input_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/switch_tIdentity`input_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
н
`input_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/switch_fIdentity^input_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/Switch*
T0
*
_output_shapes
: 
÷
_input_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/pred_idIdentityHinput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/All*
T0
*
_output_shapes
: 
«
\input_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/NoOpNoOpa^input_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/switch_t
Ќ
jinput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/control_dependencyIdentity`input_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/switch_t]^input_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/NoOp*
T0
*s
_classi
geloc:@input_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/switch_t*
_output_shapes
: 
Џ
einput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/Assert/data_0Consta^input_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/switch_f*b
valueYBW BQBucket index for categorical column "host_is_superhost" exceeds number of buckets*
dtype0*
_output_shapes
: 
Ц
^input_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/AssertAsserteinput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/Assert/Switcheinput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/Assert/data_0ginput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/Assert/Switch_1ginput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/Assert/Switch_2*
T
2		
Ъ
einput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/Assert/SwitchSwitchHinput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/All_input_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/pred_id*
_output_shapes
: : *
T0
*[
_classQ
OMloc:@input_layer/host_is_superhost_indicator/assert_less_than_num_buckets/All
Ґ
ginput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/Assert/Switch_1Switch>input_layer/host_is_superhost_indicator/to_sparse_input/values_input_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/pred_id*
T0	*Q
_classG
ECloc:@input_layer/host_is_superhost_indicator/to_sparse_input/values*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
т
ginput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/Assert/Switch_2Switch3input_layer/host_is_superhost_indicator/num_buckets_input_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/pred_id*
T0	*F
_class<
:8loc:@input_layer/host_is_superhost_indicator/num_buckets*
_output_shapes
: : 
—
linput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/control_dependency_1Identity`input_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/switch_f_^input_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/Assert*
T0
*s
_classi
geloc:@input_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/switch_f*
_output_shapes
: 
м
]input_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/MergeMergelinput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/control_dependency_1jinput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
ъ
Ninput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/GreaterEqualGreaterEqual>input_layer/host_is_superhost_indicator/to_sparse_input/values,input_layer/host_is_superhost_indicator/zero*#
_output_shapes
:€€€€€€€€€*
T0	
С
Ginput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/ConstConst*
valueB: *
dtype0*
_output_shapes
:
э
Einput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/AllAllNinput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/GreaterEqualGinput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Const*
_output_shapes
: 
ѕ
Ninput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/ConstConst*Q
valueHBF B@Negative bucket index for categorical column "host_is_superhost"*
dtype0*
_output_shapes
: 
Ц
[input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/SwitchSwitchEinput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/AllEinput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/All*
T0
*
_output_shapes
: : 
й
]input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/switch_tIdentity]input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
з
]input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/switch_fIdentity[input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/Switch*
T0
*
_output_shapes
: 
–
\input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/pred_idIdentityEinput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/All*
_output_shapes
: *
T0

Ѕ
Yinput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/NoOpNoOp^^input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/switch_t
Ѕ
ginput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/control_dependencyIdentity]input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/switch_tZ^input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/NoOp*
T0
*p
_classf
dbloc:@input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/switch_t*
_output_shapes
: 
√
binput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/Assert/data_0Const^^input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/switch_f*
dtype0*
_output_shapes
: *Q
valueHBF B@Negative bucket index for categorical column "host_is_superhost"
†
[input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/AssertAssertbinput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/Assert/Switchbinput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/Assert/data_0dinput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/Assert/Switch_1*
T
2	
О
binput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/Assert/SwitchSwitchEinput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/All\input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/pred_id*X
_classN
LJloc:@input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/All*
_output_shapes
: : *
T0

Ь
dinput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/Assert/Switch_1Switch>input_layer/host_is_superhost_indicator/to_sparse_input/values\input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/pred_id*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0	*Q
_classG
ECloc:@input_layer/host_is_superhost_indicator/to_sparse_input/values
≈
iinput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/control_dependency_1Identity]input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/switch_f\^input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/Assert*
_output_shapes
: *
T0
*p
_classf
dbloc:@input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/switch_f
г
Zinput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/MergeMergeiinput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/control_dependency_1ginput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/control_dependency*
N*
_output_shapes
: : *
T0

з
0input_layer/host_is_superhost_indicator/IdentityIdentity>input_layer/host_is_superhost_indicator/to_sparse_input/values[^input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/Merge^^input_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/Merge*#
_output_shapes
:€€€€€€€€€*
T0	
О
Cinput_layer/host_is_superhost_indicator/SparseToDense/default_valueConst*
valueB	 R
€€€€€€€€€*
dtype0	*
_output_shapes
: 
Е
5input_layer/host_is_superhost_indicator/SparseToDenseSparseToDense?input_layer/host_is_superhost_indicator/to_sparse_input/indicesCinput_layer/host_is_superhost_indicator/to_sparse_input/dense_shape0input_layer/host_is_superhost_indicator/IdentityCinput_layer/host_is_superhost_indicator/SparseToDense/default_value*
Tindices0	*
T0	*'
_output_shapes
:€€€€€€€€€
z
5input_layer/host_is_superhost_indicator/one_hot/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
|
7input_layer/host_is_superhost_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
w
5input_layer/host_is_superhost_indicator/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
}
8input_layer/host_is_superhost_indicator/one_hot/on_valueConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
~
9input_layer/host_is_superhost_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
“
/input_layer/host_is_superhost_indicator/one_hotOneHot5input_layer/host_is_superhost_indicator/SparseToDense5input_layer/host_is_superhost_indicator/one_hot/depth8input_layer/host_is_superhost_indicator/one_hot/on_value9input_layer/host_is_superhost_indicator/one_hot/off_value*+
_output_shapes
:€€€€€€€€€*
T0
Р
=input_layer/host_is_superhost_indicator/Sum/reduction_indicesConst*
valueB:
ю€€€€€€€€*
dtype0*
_output_shapes
:
‘
+input_layer/host_is_superhost_indicator/SumSum/input_layer/host_is_superhost_indicator/one_hot=input_layer/host_is_superhost_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:€€€€€€€€€
И
-input_layer/host_is_superhost_indicator/ShapeShape+input_layer/host_is_superhost_indicator/Sum*
T0*
_output_shapes
:
Е
;input_layer/host_is_superhost_indicator/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
З
=input_layer/host_is_superhost_indicator/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
З
=input_layer/host_is_superhost_indicator/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
х
5input_layer/host_is_superhost_indicator/strided_sliceStridedSlice-input_layer/host_is_superhost_indicator/Shape;input_layer/host_is_superhost_indicator/strided_slice/stack=input_layer/host_is_superhost_indicator/strided_slice/stack_1=input_layer/host_is_superhost_indicator/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
y
7input_layer/host_is_superhost_indicator/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
џ
5input_layer/host_is_superhost_indicator/Reshape/shapePack5input_layer/host_is_superhost_indicator/strided_slice7input_layer/host_is_superhost_indicator/Reshape/shape/1*
T0*
N*
_output_shapes
:
–
/input_layer/host_is_superhost_indicator/ReshapeReshape+input_layer/host_is_superhost_indicator/Sum5input_layer/host_is_superhost_indicator/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
Е
.input_layer/host_response_time_cross_rate/CastCastExpandDims_7*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
Н
/input_layer/host_response_time_cross_rate/ShapeShape.input_layer/host_response_time_cross_rate/Cast*
_output_shapes
:*
T0
З
=input_layer/host_response_time_cross_rate/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Й
?input_layer/host_response_time_cross_rate/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Й
?input_layer/host_response_time_cross_rate/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
€
7input_layer/host_response_time_cross_rate/strided_sliceStridedSlice/input_layer/host_response_time_cross_rate/Shape=input_layer/host_response_time_cross_rate/strided_slice/stack?input_layer/host_response_time_cross_rate/strided_slice/stack_1?input_layer/host_response_time_cross_rate/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
{
9input_layer/host_response_time_cross_rate/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
б
7input_layer/host_response_time_cross_rate/Reshape/shapePack7input_layer/host_response_time_cross_rate/strided_slice9input_layer/host_response_time_cross_rate/Reshape/shape/1*
T0*
N*
_output_shapes
:
„
1input_layer/host_response_time_cross_rate/ReshapeReshape.input_layer/host_response_time_cross_rate/Cast7input_layer/host_response_time_cross_rate/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
v
input_layer/item_factor_0/CastCastExpandDims_21*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
m
input_layer/item_factor_0/ShapeShapeinput_layer/item_factor_0/Cast*
T0*
_output_shapes
:
w
-input_layer/item_factor_0/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
y
/input_layer/item_factor_0/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/input_layer/item_factor_0/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/item_factor_0/strided_sliceStridedSliceinput_layer/item_factor_0/Shape-input_layer/item_factor_0/strided_slice/stack/input_layer/item_factor_0/strided_slice/stack_1/input_layer/item_factor_0/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
k
)input_layer/item_factor_0/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
±
'input_layer/item_factor_0/Reshape/shapePack'input_layer/item_factor_0/strided_slice)input_layer/item_factor_0/Reshape/shape/1*
_output_shapes
:*
T0*
N
І
!input_layer/item_factor_0/ReshapeReshapeinput_layer/item_factor_0/Cast'input_layer/item_factor_0/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
v
input_layer/item_factor_1/CastCastExpandDims_22*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
m
input_layer/item_factor_1/ShapeShapeinput_layer/item_factor_1/Cast*
_output_shapes
:*
T0
w
-input_layer/item_factor_1/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
y
/input_layer/item_factor_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/input_layer/item_factor_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/item_factor_1/strided_sliceStridedSliceinput_layer/item_factor_1/Shape-input_layer/item_factor_1/strided_slice/stack/input_layer/item_factor_1/strided_slice/stack_1/input_layer/item_factor_1/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
k
)input_layer/item_factor_1/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
±
'input_layer/item_factor_1/Reshape/shapePack'input_layer/item_factor_1/strided_slice)input_layer/item_factor_1/Reshape/shape/1*
T0*
N*
_output_shapes
:
І
!input_layer/item_factor_1/ReshapeReshapeinput_layer/item_factor_1/Cast'input_layer/item_factor_1/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
v
input_layer/item_factor_2/CastCastExpandDims_23*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
m
input_layer/item_factor_2/ShapeShapeinput_layer/item_factor_2/Cast*
T0*
_output_shapes
:
w
-input_layer/item_factor_2/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/input_layer/item_factor_2/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
y
/input_layer/item_factor_2/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/item_factor_2/strided_sliceStridedSliceinput_layer/item_factor_2/Shape-input_layer/item_factor_2/strided_slice/stack/input_layer/item_factor_2/strided_slice/stack_1/input_layer/item_factor_2/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
k
)input_layer/item_factor_2/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
±
'input_layer/item_factor_2/Reshape/shapePack'input_layer/item_factor_2/strided_slice)input_layer/item_factor_2/Reshape/shape/1*
T0*
N*
_output_shapes
:
І
!input_layer/item_factor_2/ReshapeReshapeinput_layer/item_factor_2/Cast'input_layer/item_factor_2/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
v
input_layer/item_factor_3/CastCastExpandDims_24*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
m
input_layer/item_factor_3/ShapeShapeinput_layer/item_factor_3/Cast*
_output_shapes
:*
T0
w
-input_layer/item_factor_3/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/input_layer/item_factor_3/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/input_layer/item_factor_3/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/item_factor_3/strided_sliceStridedSliceinput_layer/item_factor_3/Shape-input_layer/item_factor_3/strided_slice/stack/input_layer/item_factor_3/strided_slice/stack_1/input_layer/item_factor_3/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
k
)input_layer/item_factor_3/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
±
'input_layer/item_factor_3/Reshape/shapePack'input_layer/item_factor_3/strided_slice)input_layer/item_factor_3/Reshape/shape/1*
N*
_output_shapes
:*
T0
І
!input_layer/item_factor_3/ReshapeReshapeinput_layer/item_factor_3/Cast'input_layer/item_factor_3/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
v
input_layer/item_factor_4/CastCastExpandDims_25*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
m
input_layer/item_factor_4/ShapeShapeinput_layer/item_factor_4/Cast*
T0*
_output_shapes
:
w
-input_layer/item_factor_4/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/input_layer/item_factor_4/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/input_layer/item_factor_4/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/item_factor_4/strided_sliceStridedSliceinput_layer/item_factor_4/Shape-input_layer/item_factor_4/strided_slice/stack/input_layer/item_factor_4/strided_slice/stack_1/input_layer/item_factor_4/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
k
)input_layer/item_factor_4/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
±
'input_layer/item_factor_4/Reshape/shapePack'input_layer/item_factor_4/strided_slice)input_layer/item_factor_4/Reshape/shape/1*
_output_shapes
:*
T0*
N
І
!input_layer/item_factor_4/ReshapeReshapeinput_layer/item_factor_4/Cast'input_layer/item_factor_4/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
v
input_layer/item_factor_5/CastCastExpandDims_26*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
m
input_layer/item_factor_5/ShapeShapeinput_layer/item_factor_5/Cast*
_output_shapes
:*
T0
w
-input_layer/item_factor_5/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/input_layer/item_factor_5/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/input_layer/item_factor_5/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/item_factor_5/strided_sliceStridedSliceinput_layer/item_factor_5/Shape-input_layer/item_factor_5/strided_slice/stack/input_layer/item_factor_5/strided_slice/stack_1/input_layer/item_factor_5/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
k
)input_layer/item_factor_5/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
±
'input_layer/item_factor_5/Reshape/shapePack'input_layer/item_factor_5/strided_slice)input_layer/item_factor_5/Reshape/shape/1*
T0*
N*
_output_shapes
:
І
!input_layer/item_factor_5/ReshapeReshapeinput_layer/item_factor_5/Cast'input_layer/item_factor_5/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
v
input_layer/item_factor_6/CastCastExpandDims_27*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
m
input_layer/item_factor_6/ShapeShapeinput_layer/item_factor_6/Cast*
_output_shapes
:*
T0
w
-input_layer/item_factor_6/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/input_layer/item_factor_6/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/input_layer/item_factor_6/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/item_factor_6/strided_sliceStridedSliceinput_layer/item_factor_6/Shape-input_layer/item_factor_6/strided_slice/stack/input_layer/item_factor_6/strided_slice/stack_1/input_layer/item_factor_6/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
k
)input_layer/item_factor_6/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
±
'input_layer/item_factor_6/Reshape/shapePack'input_layer/item_factor_6/strided_slice)input_layer/item_factor_6/Reshape/shape/1*
T0*
N*
_output_shapes
:
І
!input_layer/item_factor_6/ReshapeReshapeinput_layer/item_factor_6/Cast'input_layer/item_factor_6/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
v
input_layer/item_factor_7/CastCastExpandDims_28*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
m
input_layer/item_factor_7/ShapeShapeinput_layer/item_factor_7/Cast*
T0*
_output_shapes
:
w
-input_layer/item_factor_7/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/input_layer/item_factor_7/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/input_layer/item_factor_7/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/item_factor_7/strided_sliceStridedSliceinput_layer/item_factor_7/Shape-input_layer/item_factor_7/strided_slice/stack/input_layer/item_factor_7/strided_slice/stack_1/input_layer/item_factor_7/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
k
)input_layer/item_factor_7/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
±
'input_layer/item_factor_7/Reshape/shapePack'input_layer/item_factor_7/strided_slice)input_layer/item_factor_7/Reshape/shape/1*
N*
_output_shapes
:*
T0
І
!input_layer/item_factor_7/ReshapeReshapeinput_layer/item_factor_7/Cast'input_layer/item_factor_7/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
v
input_layer/item_factor_8/CastCastExpandDims_29*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
m
input_layer/item_factor_8/ShapeShapeinput_layer/item_factor_8/Cast*
T0*
_output_shapes
:
w
-input_layer/item_factor_8/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/input_layer/item_factor_8/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/input_layer/item_factor_8/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/item_factor_8/strided_sliceStridedSliceinput_layer/item_factor_8/Shape-input_layer/item_factor_8/strided_slice/stack/input_layer/item_factor_8/strided_slice/stack_1/input_layer/item_factor_8/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
k
)input_layer/item_factor_8/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
±
'input_layer/item_factor_8/Reshape/shapePack'input_layer/item_factor_8/strided_slice)input_layer/item_factor_8/Reshape/shape/1*
N*
_output_shapes
:*
T0
І
!input_layer/item_factor_8/ReshapeReshapeinput_layer/item_factor_8/Cast'input_layer/item_factor_8/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
v
input_layer/item_factor_9/CastCastExpandDims_30*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
m
input_layer/item_factor_9/ShapeShapeinput_layer/item_factor_9/Cast*
_output_shapes
:*
T0
w
-input_layer/item_factor_9/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
y
/input_layer/item_factor_9/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/input_layer/item_factor_9/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/item_factor_9/strided_sliceStridedSliceinput_layer/item_factor_9/Shape-input_layer/item_factor_9/strided_slice/stack/input_layer/item_factor_9/strided_slice/stack_1/input_layer/item_factor_9/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
k
)input_layer/item_factor_9/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
±
'input_layer/item_factor_9/Reshape/shapePack'input_layer/item_factor_9/strided_slice)input_layer/item_factor_9/Reshape/shape/1*
T0*
N*
_output_shapes
:
І
!input_layer/item_factor_9/ReshapeReshapeinput_layer/item_factor_9/Cast'input_layer/item_factor_9/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
Ъ
Einput_layer/latitude_bucketized_X_longitude_bucketized_indicator/CastCast
ExpandDims*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
ш
Jinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Bucketize	BucketizeEinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Cast*&

boundaries
""7Я?ИЭ•?пђ?Uj≤?ї–Є?*
T0*'
_output_shapes
:€€€€€€€€€
ј
Finput_layer/latitude_bucketized_X_longitude_bucketized_indicator/ShapeShapeJinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Bucketize*
T0*
_output_shapes
:
Ю
Tinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
†
Vinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
†
Vinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
т
Ninput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_sliceStridedSliceFinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/ShapeTinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_slice/stackVinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_slice/stack_1Vinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
О
Linput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
О
Linput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range/deltaConst*
_output_shapes
: *
value	B :*
dtype0
а
Finput_layer/latitude_bucketized_X_longitude_bucketized_indicator/rangeRangeLinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range/startNinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_sliceLinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range/delta*#
_output_shapes
:€€€€€€€€€
С
Oinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
§
Kinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/ExpandDims
ExpandDimsFinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/rangeOinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/ExpandDims/dim*'
_output_shapes
:€€€€€€€€€*
T0
†
Oinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Tile/multiplesConst*
valueB"      *
dtype0*
_output_shapes
:
Э
Einput_layer/latitude_bucketized_X_longitude_bucketized_indicator/TileTileKinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/ExpandDimsOinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Tile/multiples*'
_output_shapes
:€€€€€€€€€*
T0
°
Ninput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Ш
Hinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/ReshapeReshapeEinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/TileNinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Reshape/shape*
T0*#
_output_shapes
:€€€€€€€€€
Р
Ninput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
Р
Ninput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range_1/limitConst*
value	B :*
dtype0*
_output_shapes
: 
Р
Ninput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range_1/deltaConst*
_output_shapes
: *
value	B :*
dtype0
Ё
Hinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range_1RangeNinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range_1/startNinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range_1/limitNinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range_1/delta*
_output_shapes
:
„
Qinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Tile_1/multiplesPackNinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_slice*
T0*
N*
_output_shapes
:
Ъ
Ginput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Tile_1TileHinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range_1Qinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Tile_1/multiples*
T0*#
_output_shapes
:€€€€€€€€€
£
Pinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Reshape_1/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
°
Jinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Reshape_1ReshapeJinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/BucketizePinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Reshape_1/shape*
T0*#
_output_shapes
:€€€€€€€€€
И
Finput_layer/latitude_bucketized_X_longitude_bucketized_indicator/mul/xConst*
value	B :*
dtype0*
_output_shapes
: 
К
Dinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/mulMulFinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/mul/xGinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Tile_1*
T0*#
_output_shapes
:€€€€€€€€€
Н
Dinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/addAddV2Jinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Reshape_1Dinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/mul*
T0*#
_output_shapes
:€€€€€€€€€
Ь
Finput_layer/latitude_bucketized_X_longitude_bucketized_indicator/stackPackHinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/ReshapeGinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Tile_1*
T0*
N*'
_output_shapes
:€€€€€€€€€
†
Oinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/transpose/permConst*
valueB"       *
dtype0*
_output_shapes
:
Ґ
Jinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/transpose	TransposeFinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/stackOinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/transpose/perm*
T0*'
_output_shapes
:€€€€€€€€€
№
Ginput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Cast_1CastJinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/transpose*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0	
М
Jinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/stack_1/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ъ
Hinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/stack_1PackNinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_sliceJinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/stack_1/1*
N*
_output_shapes
:*
T0
Ќ
Ginput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Cast_2CastHinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/stack_1*

SrcT0*
_output_shapes
:*

DstT0	
Ю
Ginput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Cast_3CastExpandDims_1*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
А
Linput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Bucketize_1	BucketizeGinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Cast_3**

boundaries
"ы_ѕBФyѕB.УѕB»ђѕBa∆ѕBыяѕB*
T0*'
_output_shapes
:€€€€€€€€€
ƒ
Hinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Shape_1ShapeLinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Bucketize_1*
_output_shapes
:*
T0
†
Vinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ґ
Xinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_slice_1/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
Ґ
Xinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_slice_1/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ь
Pinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_slice_1StridedSliceHinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Shape_1Vinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_slice_1/stackXinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_slice_1/stack_1Xinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_slice_1/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
Р
Ninput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
Р
Ninput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
и
Hinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range_2RangeNinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range_2/startPinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_slice_1Ninput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range_2/delta*#
_output_shapes
:€€€€€€€€€
У
Qinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/ExpandDims_1/dimConst*
value	B :*
dtype0*
_output_shapes
: 
™
Minput_layer/latitude_bucketized_X_longitude_bucketized_indicator/ExpandDims_1
ExpandDimsHinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range_2Qinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/ExpandDims_1/dim*
T0*'
_output_shapes
:€€€€€€€€€
Ґ
Qinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Tile_2/multiplesConst*
dtype0*
_output_shapes
:*
valueB"      
£
Ginput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Tile_2TileMinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/ExpandDims_1Qinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Tile_2/multiples*
T0*'
_output_shapes
:€€€€€€€€€
£
Pinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Reshape_2/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Ю
Jinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Reshape_2ReshapeGinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Tile_2Pinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Reshape_2/shape*#
_output_shapes
:€€€€€€€€€*
T0
Р
Ninput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range_3/startConst*
value	B : *
dtype0*
_output_shapes
: 
Р
Ninput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range_3/limitConst*
_output_shapes
: *
value	B :*
dtype0
Р
Ninput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range_3/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ё
Hinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range_3RangeNinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range_3/startNinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range_3/limitNinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range_3/delta*
_output_shapes
:
ў
Qinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Tile_3/multiplesPackPinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_slice_1*
T0*
N*
_output_shapes
:
Ъ
Ginput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Tile_3TileHinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/range_3Qinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Tile_3/multiples*
T0*#
_output_shapes
:€€€€€€€€€
£
Pinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Reshape_3/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
£
Jinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Reshape_3ReshapeLinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Bucketize_1Pinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Reshape_3/shape*
T0*#
_output_shapes
:€€€€€€€€€
К
Hinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/mul_1/xConst*
value	B :*
dtype0*
_output_shapes
: 
О
Finput_layer/latitude_bucketized_X_longitude_bucketized_indicator/mul_1MulHinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/mul_1/xGinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Tile_3*#
_output_shapes
:€€€€€€€€€*
T0
С
Finput_layer/latitude_bucketized_X_longitude_bucketized_indicator/add_1AddV2Jinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Reshape_3Finput_layer/latitude_bucketized_X_longitude_bucketized_indicator/mul_1*
T0*#
_output_shapes
:€€€€€€€€€
†
Hinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/stack_2PackJinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Reshape_2Ginput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Tile_3*
T0*
N*'
_output_shapes
:€€€€€€€€€
Ґ
Qinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
®
Linput_layer/latitude_bucketized_X_longitude_bucketized_indicator/transpose_1	TransposeHinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/stack_2Qinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/transpose_1/perm*'
_output_shapes
:€€€€€€€€€*
T0
ё
Ginput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Cast_4CastLinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/transpose_1*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0	
М
Jinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/stack_3/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ь
Hinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/stack_3PackPinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_slice_1Jinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/stack_3/1*
_output_shapes
:*
T0*
N
Ќ
Ginput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Cast_5CastHinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/stack_3*
_output_shapes
:*

DstT0	*

SrcT0
“
Ginput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Cast_6CastDinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/add*

SrcT0*#
_output_shapes
:€€€€€€€€€*

DstT0	
‘
Ginput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Cast_7CastFinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/add_1*#
_output_shapes
:€€€€€€€€€*

DstT0	*

SrcT0
е
Linput_layer/latitude_bucketized_X_longitude_bucketized_indicator/SparseCrossSparseCrossGinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Cast_1Ginput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Cast_4Ginput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Cast_6Ginput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Cast_7Ginput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Cast_2Ginput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Cast_5*
hashed_output(*
out_type0	*
N*<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
dense_types
 *
hash_keyюят„м*
sparse_types
2		*
internal_type0	*
num_buckets
І
\input_layer/latitude_bucketized_X_longitude_bucketized_indicator/SparseToDense/default_valueConst*
valueB	 R
€€€€€€€€€*
dtype0	*
_output_shapes
: 
ц
Ninput_layer/latitude_bucketized_X_longitude_bucketized_indicator/SparseToDenseSparseToDenseLinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/SparseCrossNinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/SparseCross:2Ninput_layer/latitude_bucketized_X_longitude_bucketized_indicator/SparseCross:1\input_layer/latitude_bucketized_X_longitude_bucketized_indicator/SparseToDense/default_value*
T0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
Tindices0	
У
Ninput_layer/latitude_bucketized_X_longitude_bucketized_indicator/one_hot/ConstConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
Х
Pinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Р
Ninput_layer/latitude_bucketized_X_longitude_bucketized_indicator/one_hot/depthConst*
_output_shapes
: *
value	B :*
dtype0
Ц
Qinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/one_hot/on_valueConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ч
Rinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ў
Hinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/one_hotOneHotNinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/SparseToDenseNinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/one_hot/depthQinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/one_hot/on_valueRinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/one_hot/off_value*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
©
Vinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Sum/reduction_indicesConst*
valueB:
ю€€€€€€€€*
dtype0*
_output_shapes
:
Я
Dinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/SumSumHinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/one_hotVinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:€€€€€€€€€
Љ
Hinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Shape_2ShapeDinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Sum*
_output_shapes
:*
T0
†
Vinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_slice_2/stackConst*
valueB: *
dtype0*
_output_shapes
:
Ґ
Xinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Ґ
Xinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ь
Pinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_slice_2StridedSliceHinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Shape_2Vinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_slice_2/stackXinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_slice_2/stack_1Xinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_slice_2/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
Ф
Rinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Reshape_4/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
ђ
Pinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Reshape_4/shapePackPinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/strided_slice_2Rinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Reshape_4/shape/1*
T0*
N*
_output_shapes
:
Я
Jinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Reshape_4ReshapeDinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/SumPinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Reshape_4/shape*'
_output_shapes
:€€€€€€€€€*
T0
А
?input_layer/listing_id_embedding/to_sparse_input/ignore_value/xConst*
valueB B *
dtype0*
_output_shapes
: 
∆
9input_layer/listing_id_embedding/to_sparse_input/NotEqualNotEqualExpandDims_9?input_layer/listing_id_embedding/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:€€€€€€€€€
•
8input_layer/listing_id_embedding/to_sparse_input/indicesWhere9input_layer/listing_id_embedding/to_sparse_input/NotEqual*'
_output_shapes
:€€€€€€€€€
ѕ
7input_layer/listing_id_embedding/to_sparse_input/valuesGatherNdExpandDims_98input_layer/listing_id_embedding/to_sparse_input/indices*
Tparams0*#
_output_shapes
:€€€€€€€€€*
Tindices0	
И
<input_layer/listing_id_embedding/to_sparse_input/dense_shapeShapeExpandDims_9*
T0*
out_type0	*
_output_shapes
:
≥
'input_layer/listing_id_embedding/lookupStringToHashBucketFast7input_layer/listing_id_embedding/to_sparse_input/values*
num_bucketsё6*#
_output_shapes
:€€€€€€€€€
н
Uinput_layer/listing_id_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*
valueB"^  2   *E
_class;
97loc:@input_layer/listing_id_embedding/embedding_weights*
dtype0*
_output_shapes
:
а
Tinput_layer/listing_id_embedding/embedding_weights/Initializer/truncated_normal/meanConst*
valueB
 *    *E
_class;
97loc:@input_layer/listing_id_embedding/embedding_weights*
dtype0*
_output_shapes
: 
в
Vinput_layer/listing_id_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*
valueB
 *√–>*E
_class;
97loc:@input_layer/listing_id_embedding/embedding_weights*
dtype0*
_output_shapes
: 
«
_input_layer/listing_id_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalUinput_layer/listing_id_embedding/embedding_weights/Initializer/truncated_normal/shape*
T0*E
_class;
97loc:@input_layer/listing_id_embedding/embedding_weights*
dtype0*
_output_shapes
:	ё62
Д
Sinput_layer/listing_id_embedding/embedding_weights/Initializer/truncated_normal/mulMul_input_layer/listing_id_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalVinput_layer/listing_id_embedding/embedding_weights/Initializer/truncated_normal/stddev*
T0*E
_class;
97loc:@input_layer/listing_id_embedding/embedding_weights*
_output_shapes
:	ё62
т
Oinput_layer/listing_id_embedding/embedding_weights/Initializer/truncated_normalAddSinput_layer/listing_id_embedding/embedding_weights/Initializer/truncated_normal/mulTinput_layer/listing_id_embedding/embedding_weights/Initializer/truncated_normal/mean*
T0*E
_class;
97loc:@input_layer/listing_id_embedding/embedding_weights*
_output_shapes
:	ё62
Ћ
2input_layer/listing_id_embedding/embedding_weights
VariableV2*E
_class;
97loc:@input_layer/listing_id_embedding/embedding_weights*
dtype0*
_output_shapes
:	ё62*
shape:	ё62
є
9input_layer/listing_id_embedding/embedding_weights/AssignAssign2input_layer/listing_id_embedding/embedding_weightsOinput_layer/listing_id_embedding/embedding_weights/Initializer/truncated_normal*
T0*E
_class;
97loc:@input_layer/listing_id_embedding/embedding_weights*
_output_shapes
:	ё62
и
7input_layer/listing_id_embedding/embedding_weights/readIdentity2input_layer/listing_id_embedding/embedding_weights*
T0*E
_class;
97loc:@input_layer/listing_id_embedding/embedding_weights*
_output_shapes
:	ё62
У
Iinput_layer/listing_id_embedding/listing_id_embedding_weights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
Т
Hinput_layer/listing_id_embedding/listing_id_embedding_weights/Slice/sizeConst*
_output_shapes
:*
valueB:*
dtype0
—
Cinput_layer/listing_id_embedding/listing_id_embedding_weights/SliceSlice<input_layer/listing_id_embedding/to_sparse_input/dense_shapeIinput_layer/listing_id_embedding/listing_id_embedding_weights/Slice/beginHinput_layer/listing_id_embedding/listing_id_embedding_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
Н
Cinput_layer/listing_id_embedding/listing_id_embedding_weights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
х
Binput_layer/listing_id_embedding/listing_id_embedding_weights/ProdProdCinput_layer/listing_id_embedding/listing_id_embedding_weights/SliceCinput_layer/listing_id_embedding/listing_id_embedding_weights/Const*
_output_shapes
: *
T0	
Р
Ninput_layer/listing_id_embedding/listing_id_embedding_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Н
Kinput_layer/listing_id_embedding/listing_id_embedding_weights/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
с
Finput_layer/listing_id_embedding/listing_id_embedding_weights/GatherV2GatherV2<input_layer/listing_id_embedding/to_sparse_input/dense_shapeNinput_layer/listing_id_embedding/listing_id_embedding_weights/GatherV2/indicesKinput_layer/listing_id_embedding/listing_id_embedding_weights/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
Ж
Dinput_layer/listing_id_embedding/listing_id_embedding_weights/Cast/xPackBinput_layer/listing_id_embedding/listing_id_embedding_weights/ProdFinput_layer/listing_id_embedding/listing_id_embedding_weights/GatherV2*
T0	*
N*
_output_shapes
:
…
Kinput_layer/listing_id_embedding/listing_id_embedding_weights/SparseReshapeSparseReshape8input_layer/listing_id_embedding/to_sparse_input/indices<input_layer/listing_id_embedding/to_sparse_input/dense_shapeDinput_layer/listing_id_embedding/listing_id_embedding_weights/Cast/x*-
_output_shapes
:€€€€€€€€€:
Ј
Tinput_layer/listing_id_embedding/listing_id_embedding_weights/SparseReshape/IdentityIdentity'input_layer/listing_id_embedding/lookup*
T0	*#
_output_shapes
:€€€€€€€€€
О
Linput_layer/listing_id_embedding/listing_id_embedding_weights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
ђ
Jinput_layer/listing_id_embedding/listing_id_embedding_weights/GreaterEqualGreaterEqualTinput_layer/listing_id_embedding/listing_id_embedding_weights/SparseReshape/IdentityLinput_layer/listing_id_embedding/listing_id_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:€€€€€€€€€
Ѕ
Cinput_layer/listing_id_embedding/listing_id_embedding_weights/WhereWhereJinput_layer/listing_id_embedding/listing_id_embedding_weights/GreaterEqual*'
_output_shapes
:€€€€€€€€€
Ю
Kinput_layer/listing_id_embedding/listing_id_embedding_weights/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Р
Einput_layer/listing_id_embedding/listing_id_embedding_weights/ReshapeReshapeCinput_layer/listing_id_embedding/listing_id_embedding_weights/WhereKinput_layer/listing_id_embedding/listing_id_embedding_weights/Reshape/shape*
T0	*#
_output_shapes
:€€€€€€€€€
П
Minput_layer/listing_id_embedding/listing_id_embedding_weights/GatherV2_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
М
Hinput_layer/listing_id_embedding/listing_id_embedding_weights/GatherV2_1GatherV2Kinput_layer/listing_id_embedding/listing_id_embedding_weights/SparseReshapeEinput_layer/listing_id_embedding/listing_id_embedding_weights/ReshapeMinput_layer/listing_id_embedding/listing_id_embedding_weights/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:€€€€€€€€€
П
Minput_layer/listing_id_embedding/listing_id_embedding_weights/GatherV2_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
С
Hinput_layer/listing_id_embedding/listing_id_embedding_weights/GatherV2_2GatherV2Tinput_layer/listing_id_embedding/listing_id_embedding_weights/SparseReshape/IdentityEinput_layer/listing_id_embedding/listing_id_embedding_weights/ReshapeMinput_layer/listing_id_embedding/listing_id_embedding_weights/GatherV2_2/axis*
Tindices0	*
Tparams0	*#
_output_shapes
:€€€€€€€€€*
Taxis0
∆
Finput_layer/listing_id_embedding/listing_id_embedding_weights/IdentityIdentityMinput_layer/listing_id_embedding/listing_id_embedding_weights/SparseReshape:1*
_output_shapes
:*
T0	
Щ
Winput_layer/listing_id_embedding/listing_id_embedding_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Р
einput_layer/listing_id_embedding/listing_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsHinput_layer/listing_id_embedding/listing_id_embedding_weights/GatherV2_1Hinput_layer/listing_id_embedding/listing_id_embedding_weights/GatherV2_2Finput_layer/listing_id_embedding/listing_id_embedding_weights/IdentityWinput_layer/listing_id_embedding/listing_id_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
Ї
iinput_layer/listing_id_embedding/listing_id_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
Љ
kinput_layer/listing_id_embedding/listing_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Љ
kinput_layer/listing_id_embedding/listing_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
Ф
cinput_layer/listing_id_embedding/listing_id_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceeinput_layer/listing_id_embedding/listing_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsiinput_layer/listing_id_embedding/listing_id_embedding_weights/embedding_lookup_sparse/strided_slice/stackkinput_layer/listing_id_embedding/listing_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1kinput_layer/listing_id_embedding/listing_id_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*#
_output_shapes
:€€€€€€€€€*
T0	*
Index0*
shrink_axis_mask*

begin_mask
Д
Zinput_layer/listing_id_embedding/listing_id_embedding_weights/embedding_lookup_sparse/CastCastcinput_layer/listing_id_embedding/listing_id_embedding_weights/embedding_lookup_sparse/strided_slice*#
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0	
М
\input_layer/listing_id_embedding/listing_id_embedding_weights/embedding_lookup_sparse/UniqueUniqueginput_layer/listing_id_embedding/listing_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0	
ф
kinput_layer/listing_id_embedding/listing_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
dtype0*
_output_shapes
: *
value	B : *E
_class;
97loc:@input_layer/listing_id_embedding/embedding_weights
Т
finput_layer/listing_id_embedding/listing_id_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV27input_layer/listing_id_embedding/embedding_weights/read\input_layer/listing_id_embedding/listing_id_embedding_weights/embedding_lookup_sparse/Uniquekinput_layer/listing_id_embedding/listing_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Tparams0*E
_class;
97loc:@input_layer/listing_id_embedding/embedding_weights*'
_output_shapes
:€€€€€€€€€2*
Taxis0*
Tindices0	
Х
oinput_layer/listing_id_embedding/listing_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityfinput_layer/listing_id_embedding/listing_id_embedding_weights/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:€€€€€€€€€2*
T0
…
Uinput_layer/listing_id_embedding/listing_id_embedding_weights/embedding_lookup_sparseSparseSegmentMeanoinput_layer/listing_id_embedding/listing_id_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity^input_layer/listing_id_embedding/listing_id_embedding_weights/embedding_lookup_sparse/Unique:1Zinput_layer/listing_id_embedding/listing_id_embedding_weights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:€€€€€€€€€2
Ю
Minput_layer/listing_id_embedding/listing_id_embedding_weights/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"€€€€   
Љ
Ginput_layer/listing_id_embedding/listing_id_embedding_weights/Reshape_1Reshapeginput_layer/listing_id_embedding/listing_id_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Minput_layer/listing_id_embedding/listing_id_embedding_weights/Reshape_1/shape*
T0
*'
_output_shapes
:€€€€€€€€€
»
Cinput_layer/listing_id_embedding/listing_id_embedding_weights/ShapeShapeUinput_layer/listing_id_embedding/listing_id_embedding_weights/embedding_lookup_sparse*
_output_shapes
:*
T0
Ы
Qinput_layer/listing_id_embedding/listing_id_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0
Э
Sinput_layer/listing_id_embedding/listing_id_embedding_weights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Э
Sinput_layer/listing_id_embedding/listing_id_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
г
Kinput_layer/listing_id_embedding/listing_id_embedding_weights/strided_sliceStridedSliceCinput_layer/listing_id_embedding/listing_id_embedding_weights/ShapeQinput_layer/listing_id_embedding/listing_id_embedding_weights/strided_slice/stackSinput_layer/listing_id_embedding/listing_id_embedding_weights/strided_slice/stack_1Sinput_layer/listing_id_embedding/listing_id_embedding_weights/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
З
Einput_layer/listing_id_embedding/listing_id_embedding_weights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
Н
Cinput_layer/listing_id_embedding/listing_id_embedding_weights/stackPackEinput_layer/listing_id_embedding/listing_id_embedding_weights/stack/0Kinput_layer/listing_id_embedding/listing_id_embedding_weights/strided_slice*
_output_shapes
:*
T0*
N
У
Binput_layer/listing_id_embedding/listing_id_embedding_weights/TileTileGinput_layer/listing_id_embedding/listing_id_embedding_weights/Reshape_1Cinput_layer/listing_id_embedding/listing_id_embedding_weights/stack*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0

ё
Hinput_layer/listing_id_embedding/listing_id_embedding_weights/zeros_like	ZerosLikeUinput_layer/listing_id_embedding/listing_id_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:€€€€€€€€€2*
T0
ё
=input_layer/listing_id_embedding/listing_id_embedding_weightsSelectBinput_layer/listing_id_embedding/listing_id_embedding_weights/TileHinput_layer/listing_id_embedding/listing_id_embedding_weights/zeros_likeUinput_layer/listing_id_embedding/listing_id_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:€€€€€€€€€2
Њ
Dinput_layer/listing_id_embedding/listing_id_embedding_weights/Cast_1Cast<input_layer/listing_id_embedding/to_sparse_input/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0
Х
Kinput_layer/listing_id_embedding/listing_id_embedding_weights/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 
Ф
Jinput_layer/listing_id_embedding/listing_id_embedding_weights/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
я
Einput_layer/listing_id_embedding/listing_id_embedding_weights/Slice_1SliceDinput_layer/listing_id_embedding/listing_id_embedding_weights/Cast_1Kinput_layer/listing_id_embedding/listing_id_embedding_weights/Slice_1/beginJinput_layer/listing_id_embedding/listing_id_embedding_weights/Slice_1/size*
_output_shapes
:*
Index0*
T0
≤
Einput_layer/listing_id_embedding/listing_id_embedding_weights/Shape_1Shape=input_layer/listing_id_embedding/listing_id_embedding_weights*
T0*
_output_shapes
:
Х
Kinput_layer/listing_id_embedding/listing_id_embedding_weights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
Э
Jinput_layer/listing_id_embedding/listing_id_embedding_weights/Slice_2/sizeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
а
Einput_layer/listing_id_embedding/listing_id_embedding_weights/Slice_2SliceEinput_layer/listing_id_embedding/listing_id_embedding_weights/Shape_1Kinput_layer/listing_id_embedding/listing_id_embedding_weights/Slice_2/beginJinput_layer/listing_id_embedding/listing_id_embedding_weights/Slice_2/size*
_output_shapes
:*
Index0*
T0
Л
Iinput_layer/listing_id_embedding/listing_id_embedding_weights/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
„
Dinput_layer/listing_id_embedding/listing_id_embedding_weights/concatConcatV2Einput_layer/listing_id_embedding/listing_id_embedding_weights/Slice_1Einput_layer/listing_id_embedding/listing_id_embedding_weights/Slice_2Iinput_layer/listing_id_embedding/listing_id_embedding_weights/concat/axis*
T0*
N*
_output_shapes
:
Й
Ginput_layer/listing_id_embedding/listing_id_embedding_weights/Reshape_2Reshape=input_layer/listing_id_embedding/listing_id_embedding_weightsDinput_layer/listing_id_embedding/listing_id_embedding_weights/concat*'
_output_shapes
:€€€€€€€€€2*
T0
Э
&input_layer/listing_id_embedding/ShapeShapeGinput_layer/listing_id_embedding/listing_id_embedding_weights/Reshape_2*
T0*
_output_shapes
:
~
4input_layer/listing_id_embedding/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
А
6input_layer/listing_id_embedding/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
А
6input_layer/listing_id_embedding/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
“
.input_layer/listing_id_embedding/strided_sliceStridedSlice&input_layer/listing_id_embedding/Shape4input_layer/listing_id_embedding/strided_slice/stack6input_layer/listing_id_embedding/strided_slice/stack_16input_layer/listing_id_embedding/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
r
0input_layer/listing_id_embedding/Reshape/shape/1Const*
value	B :2*
dtype0*
_output_shapes
: 
∆
.input_layer/listing_id_embedding/Reshape/shapePack.input_layer/listing_id_embedding/strided_slice0input_layer/listing_id_embedding/Reshape/shape/1*
T0*
N*
_output_shapes
:
ё
(input_layer/listing_id_embedding/ReshapeReshapeGinput_layer/listing_id_embedding/listing_id_embedding_weights/Reshape_2.input_layer/listing_id_embedding/Reshape/shape*'
_output_shapes
:€€€€€€€€€2*
T0
n
%input_layer/nearby_sites_rating/sub/yConst*
valueB 2Z¬aик€?*
dtype0*
_output_shapes
: 
С
#input_layer/nearby_sites_rating/subSubExpandDims_5%input_layer/nearby_sites_rating/sub/y*
T0*'
_output_shapes
:€€€€€€€€€
r
)input_layer/nearby_sites_rating/truediv/yConst*
_output_shapes
: *
valueB 2√: с?*
dtype0
і
'input_layer/nearby_sites_rating/truedivRealDiv#input_layer/nearby_sites_rating/sub)input_layer/nearby_sites_rating/truediv/y*'
_output_shapes
:€€€€€€€€€*
T0
Ц
$input_layer/nearby_sites_rating/CastCast'input_layer/nearby_sites_rating/truediv*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
y
%input_layer/nearby_sites_rating/ShapeShape$input_layer/nearby_sites_rating/Cast*
_output_shapes
:*
T0
}
3input_layer/nearby_sites_rating/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

5input_layer/nearby_sites_rating/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

5input_layer/nearby_sites_rating/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Ќ
-input_layer/nearby_sites_rating/strided_sliceStridedSlice%input_layer/nearby_sites_rating/Shape3input_layer/nearby_sites_rating/strided_slice/stack5input_layer/nearby_sites_rating/strided_slice/stack_15input_layer/nearby_sites_rating/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
q
/input_layer/nearby_sites_rating/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
√
-input_layer/nearby_sites_rating/Reshape/shapePack-input_layer/nearby_sites_rating/strided_slice/input_layer/nearby_sites_rating/Reshape/shape/1*
T0*
N*
_output_shapes
:
є
'input_layer/nearby_sites_rating/ReshapeReshape$input_layer/nearby_sites_rating/Cast-input_layer/nearby_sites_rating/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
o
&input_layer/nearest_station_dist/sub/yConst*
valueB 2YХі„Пя?*
dtype0*
_output_shapes
: 
У
$input_layer/nearest_station_dist/subSubExpandDims_6&input_layer/nearest_station_dist/sub/y*
T0*'
_output_shapes
:€€€€€€€€€
s
*input_layer/nearest_station_dist/truediv/yConst*
_output_shapes
: *
valueB 2\j€гz…„?*
dtype0
Ј
(input_layer/nearest_station_dist/truedivRealDiv$input_layer/nearest_station_dist/sub*input_layer/nearest_station_dist/truediv/y*
T0*'
_output_shapes
:€€€€€€€€€
Ш
%input_layer/nearest_station_dist/CastCast(input_layer/nearest_station_dist/truediv*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
{
&input_layer/nearest_station_dist/ShapeShape%input_layer/nearest_station_dist/Cast*
_output_shapes
:*
T0
~
4input_layer/nearest_station_dist/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
А
6input_layer/nearest_station_dist/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
А
6input_layer/nearest_station_dist/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
“
.input_layer/nearest_station_dist/strided_sliceStridedSlice&input_layer/nearest_station_dist/Shape4input_layer/nearest_station_dist/strided_slice/stack6input_layer/nearest_station_dist/strided_slice/stack_16input_layer/nearest_station_dist/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
r
0input_layer/nearest_station_dist/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
∆
.input_layer/nearest_station_dist/Reshape/shapePack.input_layer/nearest_station_dist/strided_slice0input_layer/nearest_station_dist/Reshape/shape/1*
T0*
N*
_output_shapes
:
Љ
(input_layer/nearest_station_dist/ReshapeReshape%input_layer/nearest_station_dist/Cast.input_layer/nearest_station_dist/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
x
!input_layer/price_bucketized/CastCastExpandDims_2*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
ƒ
&input_layer/price_bucketized/Bucketize	Bucketize!input_layer/price_bucketized/Cast*:

boundaries,
*"(      »B  HC  ЦC  »C  ъC  D  /D  HD  aD*
T0*'
_output_shapes
:€€€€€€€€€
Ф
#input_layer/price_bucketized/Cast_1Cast&input_layer/price_bucketized/Bucketize*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0	
o
*input_layer/price_bucketized/one_hot/ConstConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
q
,input_layer/price_bucketized/one_hot/Const_1Const*
_output_shapes
: *
valueB
 *    *
dtype0
l
*input_layer/price_bucketized/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
r
-input_layer/price_bucketized/one_hot/on_valueConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
s
.input_layer/price_bucketized/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ф
$input_layer/price_bucketized/one_hotOneHot#input_layer/price_bucketized/Cast_1*input_layer/price_bucketized/one_hot/depth-input_layer/price_bucketized/one_hot/on_value.input_layer/price_bucketized/one_hot/off_value*+
_output_shapes
:€€€€€€€€€*
T0
v
"input_layer/price_bucketized/ShapeShape$input_layer/price_bucketized/one_hot*
T0*
_output_shapes
:
z
0input_layer/price_bucketized/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
|
2input_layer/price_bucketized/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
|
2input_layer/price_bucketized/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Њ
*input_layer/price_bucketized/strided_sliceStridedSlice"input_layer/price_bucketized/Shape0input_layer/price_bucketized/strided_slice/stack2input_layer/price_bucketized/strided_slice/stack_12input_layer/price_bucketized/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
n
,input_layer/price_bucketized/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ї
*input_layer/price_bucketized/Reshape/shapePack*input_layer/price_bucketized/strided_slice,input_layer/price_bucketized/Reshape/shape/1*
T0*
N*
_output_shapes
:
≥
$input_layer/price_bucketized/ReshapeReshape$input_layer/price_bucketized/one_hot*input_layer/price_bucketized/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
v
input_layer/text_factor_0/CastCastExpandDims_31*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
m
input_layer/text_factor_0/ShapeShapeinput_layer/text_factor_0/Cast*
T0*
_output_shapes
:
w
-input_layer/text_factor_0/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/input_layer/text_factor_0/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
y
/input_layer/text_factor_0/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/text_factor_0/strided_sliceStridedSliceinput_layer/text_factor_0/Shape-input_layer/text_factor_0/strided_slice/stack/input_layer/text_factor_0/strided_slice/stack_1/input_layer/text_factor_0/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
k
)input_layer/text_factor_0/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
±
'input_layer/text_factor_0/Reshape/shapePack'input_layer/text_factor_0/strided_slice)input_layer/text_factor_0/Reshape/shape/1*
N*
_output_shapes
:*
T0
І
!input_layer/text_factor_0/ReshapeReshapeinput_layer/text_factor_0/Cast'input_layer/text_factor_0/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
v
input_layer/text_factor_1/CastCastExpandDims_32*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
m
input_layer/text_factor_1/ShapeShapeinput_layer/text_factor_1/Cast*
_output_shapes
:*
T0
w
-input_layer/text_factor_1/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
y
/input_layer/text_factor_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/input_layer/text_factor_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/text_factor_1/strided_sliceStridedSliceinput_layer/text_factor_1/Shape-input_layer/text_factor_1/strided_slice/stack/input_layer/text_factor_1/strided_slice/stack_1/input_layer/text_factor_1/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
k
)input_layer/text_factor_1/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
±
'input_layer/text_factor_1/Reshape/shapePack'input_layer/text_factor_1/strided_slice)input_layer/text_factor_1/Reshape/shape/1*
T0*
N*
_output_shapes
:
І
!input_layer/text_factor_1/ReshapeReshapeinput_layer/text_factor_1/Cast'input_layer/text_factor_1/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_10/CastCastExpandDims_41*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_10/ShapeShapeinput_layer/text_factor_10/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_10/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_10/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
z
0input_layer/text_factor_10/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_10/strided_sliceStridedSlice input_layer/text_factor_10/Shape.input_layer/text_factor_10/strided_slice/stack0input_layer/text_factor_10/strided_slice/stack_10input_layer/text_factor_10/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
l
*input_layer/text_factor_10/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_10/Reshape/shapePack(input_layer/text_factor_10/strided_slice*input_layer/text_factor_10/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_10/ReshapeReshapeinput_layer/text_factor_10/Cast(input_layer/text_factor_10/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_11/CastCastExpandDims_42*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_11/ShapeShapeinput_layer/text_factor_11/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_11/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
z
0input_layer/text_factor_11/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
z
0input_layer/text_factor_11/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_11/strided_sliceStridedSlice input_layer/text_factor_11/Shape.input_layer/text_factor_11/strided_slice/stack0input_layer/text_factor_11/strided_slice/stack_10input_layer/text_factor_11/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
l
*input_layer/text_factor_11/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_11/Reshape/shapePack(input_layer/text_factor_11/strided_slice*input_layer/text_factor_11/Reshape/shape/1*
_output_shapes
:*
T0*
N
™
"input_layer/text_factor_11/ReshapeReshapeinput_layer/text_factor_11/Cast(input_layer/text_factor_11/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_12/CastCastExpandDims_43*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_12/ShapeShapeinput_layer/text_factor_12/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_12/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
z
0input_layer/text_factor_12/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_12/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_12/strided_sliceStridedSlice input_layer/text_factor_12/Shape.input_layer/text_factor_12/strided_slice/stack0input_layer/text_factor_12/strided_slice/stack_10input_layer/text_factor_12/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
l
*input_layer/text_factor_12/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_12/Reshape/shapePack(input_layer/text_factor_12/strided_slice*input_layer/text_factor_12/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_12/ReshapeReshapeinput_layer/text_factor_12/Cast(input_layer/text_factor_12/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_13/CastCastExpandDims_44*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_13/ShapeShapeinput_layer/text_factor_13/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_13/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
z
0input_layer/text_factor_13/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
z
0input_layer/text_factor_13/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_13/strided_sliceStridedSlice input_layer/text_factor_13/Shape.input_layer/text_factor_13/strided_slice/stack0input_layer/text_factor_13/strided_slice/stack_10input_layer/text_factor_13/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
l
*input_layer/text_factor_13/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
і
(input_layer/text_factor_13/Reshape/shapePack(input_layer/text_factor_13/strided_slice*input_layer/text_factor_13/Reshape/shape/1*
_output_shapes
:*
T0*
N
™
"input_layer/text_factor_13/ReshapeReshapeinput_layer/text_factor_13/Cast(input_layer/text_factor_13/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
w
input_layer/text_factor_14/CastCastExpandDims_45*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_14/ShapeShapeinput_layer/text_factor_14/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_14/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
z
0input_layer/text_factor_14/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
z
0input_layer/text_factor_14/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
і
(input_layer/text_factor_14/strided_sliceStridedSlice input_layer/text_factor_14/Shape.input_layer/text_factor_14/strided_slice/stack0input_layer/text_factor_14/strided_slice/stack_10input_layer/text_factor_14/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
l
*input_layer/text_factor_14/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
і
(input_layer/text_factor_14/Reshape/shapePack(input_layer/text_factor_14/strided_slice*input_layer/text_factor_14/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_14/ReshapeReshapeinput_layer/text_factor_14/Cast(input_layer/text_factor_14/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_15/CastCastExpandDims_46*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_15/ShapeShapeinput_layer/text_factor_15/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_15/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_15/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_15/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_15/strided_sliceStridedSlice input_layer/text_factor_15/Shape.input_layer/text_factor_15/strided_slice/stack0input_layer/text_factor_15/strided_slice/stack_10input_layer/text_factor_15/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
l
*input_layer/text_factor_15/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_15/Reshape/shapePack(input_layer/text_factor_15/strided_slice*input_layer/text_factor_15/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_15/ReshapeReshapeinput_layer/text_factor_15/Cast(input_layer/text_factor_15/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
w
input_layer/text_factor_16/CastCastExpandDims_47*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_16/ShapeShapeinput_layer/text_factor_16/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_16/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
z
0input_layer/text_factor_16/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_16/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_16/strided_sliceStridedSlice input_layer/text_factor_16/Shape.input_layer/text_factor_16/strided_slice/stack0input_layer/text_factor_16/strided_slice/stack_10input_layer/text_factor_16/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
l
*input_layer/text_factor_16/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_16/Reshape/shapePack(input_layer/text_factor_16/strided_slice*input_layer/text_factor_16/Reshape/shape/1*
N*
_output_shapes
:*
T0
™
"input_layer/text_factor_16/ReshapeReshapeinput_layer/text_factor_16/Cast(input_layer/text_factor_16/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_17/CastCastExpandDims_48*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_17/ShapeShapeinput_layer/text_factor_17/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_17/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_17/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_17/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_17/strided_sliceStridedSlice input_layer/text_factor_17/Shape.input_layer/text_factor_17/strided_slice/stack0input_layer/text_factor_17/strided_slice/stack_10input_layer/text_factor_17/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
l
*input_layer/text_factor_17/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_17/Reshape/shapePack(input_layer/text_factor_17/strided_slice*input_layer/text_factor_17/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_17/ReshapeReshapeinput_layer/text_factor_17/Cast(input_layer/text_factor_17/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_18/CastCastExpandDims_49*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_18/ShapeShapeinput_layer/text_factor_18/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_18/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_18/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
z
0input_layer/text_factor_18/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_18/strided_sliceStridedSlice input_layer/text_factor_18/Shape.input_layer/text_factor_18/strided_slice/stack0input_layer/text_factor_18/strided_slice/stack_10input_layer/text_factor_18/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
l
*input_layer/text_factor_18/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_18/Reshape/shapePack(input_layer/text_factor_18/strided_slice*input_layer/text_factor_18/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_18/ReshapeReshapeinput_layer/text_factor_18/Cast(input_layer/text_factor_18/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
w
input_layer/text_factor_19/CastCastExpandDims_50*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_19/ShapeShapeinput_layer/text_factor_19/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_19/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_19/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_19/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_19/strided_sliceStridedSlice input_layer/text_factor_19/Shape.input_layer/text_factor_19/strided_slice/stack0input_layer/text_factor_19/strided_slice/stack_10input_layer/text_factor_19/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
l
*input_layer/text_factor_19/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
і
(input_layer/text_factor_19/Reshape/shapePack(input_layer/text_factor_19/strided_slice*input_layer/text_factor_19/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_19/ReshapeReshapeinput_layer/text_factor_19/Cast(input_layer/text_factor_19/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
v
input_layer/text_factor_2/CastCastExpandDims_33*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
m
input_layer/text_factor_2/ShapeShapeinput_layer/text_factor_2/Cast*
_output_shapes
:*
T0
w
-input_layer/text_factor_2/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/input_layer/text_factor_2/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/input_layer/text_factor_2/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ѓ
'input_layer/text_factor_2/strided_sliceStridedSliceinput_layer/text_factor_2/Shape-input_layer/text_factor_2/strided_slice/stack/input_layer/text_factor_2/strided_slice/stack_1/input_layer/text_factor_2/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
k
)input_layer/text_factor_2/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
±
'input_layer/text_factor_2/Reshape/shapePack'input_layer/text_factor_2/strided_slice)input_layer/text_factor_2/Reshape/shape/1*
_output_shapes
:*
T0*
N
І
!input_layer/text_factor_2/ReshapeReshapeinput_layer/text_factor_2/Cast'input_layer/text_factor_2/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
w
input_layer/text_factor_20/CastCastExpandDims_51*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_20/ShapeShapeinput_layer/text_factor_20/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_20/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_20/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_20/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
і
(input_layer/text_factor_20/strided_sliceStridedSlice input_layer/text_factor_20/Shape.input_layer/text_factor_20/strided_slice/stack0input_layer/text_factor_20/strided_slice/stack_10input_layer/text_factor_20/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
l
*input_layer/text_factor_20/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
і
(input_layer/text_factor_20/Reshape/shapePack(input_layer/text_factor_20/strided_slice*input_layer/text_factor_20/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_20/ReshapeReshapeinput_layer/text_factor_20/Cast(input_layer/text_factor_20/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_21/CastCastExpandDims_52*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_21/ShapeShapeinput_layer/text_factor_21/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_21/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_21/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_21/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_21/strided_sliceStridedSlice input_layer/text_factor_21/Shape.input_layer/text_factor_21/strided_slice/stack0input_layer/text_factor_21/strided_slice/stack_10input_layer/text_factor_21/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
l
*input_layer/text_factor_21/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_21/Reshape/shapePack(input_layer/text_factor_21/strided_slice*input_layer/text_factor_21/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_21/ReshapeReshapeinput_layer/text_factor_21/Cast(input_layer/text_factor_21/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_22/CastCastExpandDims_53*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_22/ShapeShapeinput_layer/text_factor_22/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_22/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_22/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_22/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_22/strided_sliceStridedSlice input_layer/text_factor_22/Shape.input_layer/text_factor_22/strided_slice/stack0input_layer/text_factor_22/strided_slice/stack_10input_layer/text_factor_22/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
l
*input_layer/text_factor_22/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_22/Reshape/shapePack(input_layer/text_factor_22/strided_slice*input_layer/text_factor_22/Reshape/shape/1*
N*
_output_shapes
:*
T0
™
"input_layer/text_factor_22/ReshapeReshapeinput_layer/text_factor_22/Cast(input_layer/text_factor_22/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_23/CastCastExpandDims_54*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_23/ShapeShapeinput_layer/text_factor_23/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_23/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_23/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
z
0input_layer/text_factor_23/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_23/strided_sliceStridedSlice input_layer/text_factor_23/Shape.input_layer/text_factor_23/strided_slice/stack0input_layer/text_factor_23/strided_slice/stack_10input_layer/text_factor_23/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
l
*input_layer/text_factor_23/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_23/Reshape/shapePack(input_layer/text_factor_23/strided_slice*input_layer/text_factor_23/Reshape/shape/1*
_output_shapes
:*
T0*
N
™
"input_layer/text_factor_23/ReshapeReshapeinput_layer/text_factor_23/Cast(input_layer/text_factor_23/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_24/CastCastExpandDims_55*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_24/ShapeShapeinput_layer/text_factor_24/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_24/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
z
0input_layer/text_factor_24/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_24/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_24/strided_sliceStridedSlice input_layer/text_factor_24/Shape.input_layer/text_factor_24/strided_slice/stack0input_layer/text_factor_24/strided_slice/stack_10input_layer/text_factor_24/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
l
*input_layer/text_factor_24/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_24/Reshape/shapePack(input_layer/text_factor_24/strided_slice*input_layer/text_factor_24/Reshape/shape/1*
N*
_output_shapes
:*
T0
™
"input_layer/text_factor_24/ReshapeReshapeinput_layer/text_factor_24/Cast(input_layer/text_factor_24/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_25/CastCastExpandDims_56*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_25/ShapeShapeinput_layer/text_factor_25/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_25/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
z
0input_layer/text_factor_25/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
z
0input_layer/text_factor_25/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_25/strided_sliceStridedSlice input_layer/text_factor_25/Shape.input_layer/text_factor_25/strided_slice/stack0input_layer/text_factor_25/strided_slice/stack_10input_layer/text_factor_25/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
l
*input_layer/text_factor_25/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
і
(input_layer/text_factor_25/Reshape/shapePack(input_layer/text_factor_25/strided_slice*input_layer/text_factor_25/Reshape/shape/1*
_output_shapes
:*
T0*
N
™
"input_layer/text_factor_25/ReshapeReshapeinput_layer/text_factor_25/Cast(input_layer/text_factor_25/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
w
input_layer/text_factor_26/CastCastExpandDims_57*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_26/ShapeShapeinput_layer/text_factor_26/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_26/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_26/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_26/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_26/strided_sliceStridedSlice input_layer/text_factor_26/Shape.input_layer/text_factor_26/strided_slice/stack0input_layer/text_factor_26/strided_slice/stack_10input_layer/text_factor_26/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
l
*input_layer/text_factor_26/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_26/Reshape/shapePack(input_layer/text_factor_26/strided_slice*input_layer/text_factor_26/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_26/ReshapeReshapeinput_layer/text_factor_26/Cast(input_layer/text_factor_26/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
w
input_layer/text_factor_27/CastCastExpandDims_58*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_27/ShapeShapeinput_layer/text_factor_27/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_27/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_27/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_27/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_27/strided_sliceStridedSlice input_layer/text_factor_27/Shape.input_layer/text_factor_27/strided_slice/stack0input_layer/text_factor_27/strided_slice/stack_10input_layer/text_factor_27/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
l
*input_layer/text_factor_27/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
і
(input_layer/text_factor_27/Reshape/shapePack(input_layer/text_factor_27/strided_slice*input_layer/text_factor_27/Reshape/shape/1*
N*
_output_shapes
:*
T0
™
"input_layer/text_factor_27/ReshapeReshapeinput_layer/text_factor_27/Cast(input_layer/text_factor_27/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
w
input_layer/text_factor_28/CastCastExpandDims_59*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_28/ShapeShapeinput_layer/text_factor_28/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_28/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_28/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_28/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_28/strided_sliceStridedSlice input_layer/text_factor_28/Shape.input_layer/text_factor_28/strided_slice/stack0input_layer/text_factor_28/strided_slice/stack_10input_layer/text_factor_28/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
l
*input_layer/text_factor_28/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_28/Reshape/shapePack(input_layer/text_factor_28/strided_slice*input_layer/text_factor_28/Reshape/shape/1*
_output_shapes
:*
T0*
N
™
"input_layer/text_factor_28/ReshapeReshapeinput_layer/text_factor_28/Cast(input_layer/text_factor_28/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_29/CastCastExpandDims_60*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_29/ShapeShapeinput_layer/text_factor_29/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_29/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_29/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_29/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_29/strided_sliceStridedSlice input_layer/text_factor_29/Shape.input_layer/text_factor_29/strided_slice/stack0input_layer/text_factor_29/strided_slice/stack_10input_layer/text_factor_29/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
l
*input_layer/text_factor_29/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_29/Reshape/shapePack(input_layer/text_factor_29/strided_slice*input_layer/text_factor_29/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_29/ReshapeReshapeinput_layer/text_factor_29/Cast(input_layer/text_factor_29/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
v
input_layer/text_factor_3/CastCastExpandDims_34*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
m
input_layer/text_factor_3/ShapeShapeinput_layer/text_factor_3/Cast*
_output_shapes
:*
T0
w
-input_layer/text_factor_3/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/input_layer/text_factor_3/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
y
/input_layer/text_factor_3/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/text_factor_3/strided_sliceStridedSliceinput_layer/text_factor_3/Shape-input_layer/text_factor_3/strided_slice/stack/input_layer/text_factor_3/strided_slice/stack_1/input_layer/text_factor_3/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
k
)input_layer/text_factor_3/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
±
'input_layer/text_factor_3/Reshape/shapePack'input_layer/text_factor_3/strided_slice)input_layer/text_factor_3/Reshape/shape/1*
T0*
N*
_output_shapes
:
І
!input_layer/text_factor_3/ReshapeReshapeinput_layer/text_factor_3/Cast'input_layer/text_factor_3/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_30/CastCastExpandDims_61*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_30/ShapeShapeinput_layer/text_factor_30/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_30/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_30/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_30/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_30/strided_sliceStridedSlice input_layer/text_factor_30/Shape.input_layer/text_factor_30/strided_slice/stack0input_layer/text_factor_30/strided_slice/stack_10input_layer/text_factor_30/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
l
*input_layer/text_factor_30/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_30/Reshape/shapePack(input_layer/text_factor_30/strided_slice*input_layer/text_factor_30/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_30/ReshapeReshapeinput_layer/text_factor_30/Cast(input_layer/text_factor_30/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
w
input_layer/text_factor_31/CastCastExpandDims_62*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_31/ShapeShapeinput_layer/text_factor_31/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_31/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_31/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_31/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_31/strided_sliceStridedSlice input_layer/text_factor_31/Shape.input_layer/text_factor_31/strided_slice/stack0input_layer/text_factor_31/strided_slice/stack_10input_layer/text_factor_31/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
l
*input_layer/text_factor_31/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_31/Reshape/shapePack(input_layer/text_factor_31/strided_slice*input_layer/text_factor_31/Reshape/shape/1*
_output_shapes
:*
T0*
N
™
"input_layer/text_factor_31/ReshapeReshapeinput_layer/text_factor_31/Cast(input_layer/text_factor_31/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_32/CastCastExpandDims_63*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_32/ShapeShapeinput_layer/text_factor_32/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_32/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
z
0input_layer/text_factor_32/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
z
0input_layer/text_factor_32/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_32/strided_sliceStridedSlice input_layer/text_factor_32/Shape.input_layer/text_factor_32/strided_slice/stack0input_layer/text_factor_32/strided_slice/stack_10input_layer/text_factor_32/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
l
*input_layer/text_factor_32/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_32/Reshape/shapePack(input_layer/text_factor_32/strided_slice*input_layer/text_factor_32/Reshape/shape/1*
N*
_output_shapes
:*
T0
™
"input_layer/text_factor_32/ReshapeReshapeinput_layer/text_factor_32/Cast(input_layer/text_factor_32/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_33/CastCastExpandDims_64*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_33/ShapeShapeinput_layer/text_factor_33/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_33/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_33/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_33/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_33/strided_sliceStridedSlice input_layer/text_factor_33/Shape.input_layer/text_factor_33/strided_slice/stack0input_layer/text_factor_33/strided_slice/stack_10input_layer/text_factor_33/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
l
*input_layer/text_factor_33/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_33/Reshape/shapePack(input_layer/text_factor_33/strided_slice*input_layer/text_factor_33/Reshape/shape/1*
_output_shapes
:*
T0*
N
™
"input_layer/text_factor_33/ReshapeReshapeinput_layer/text_factor_33/Cast(input_layer/text_factor_33/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_34/CastCastExpandDims_65*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_34/ShapeShapeinput_layer/text_factor_34/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_34/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_34/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_34/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_34/strided_sliceStridedSlice input_layer/text_factor_34/Shape.input_layer/text_factor_34/strided_slice/stack0input_layer/text_factor_34/strided_slice/stack_10input_layer/text_factor_34/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
l
*input_layer/text_factor_34/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_34/Reshape/shapePack(input_layer/text_factor_34/strided_slice*input_layer/text_factor_34/Reshape/shape/1*
_output_shapes
:*
T0*
N
™
"input_layer/text_factor_34/ReshapeReshapeinput_layer/text_factor_34/Cast(input_layer/text_factor_34/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_35/CastCastExpandDims_66*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_35/ShapeShapeinput_layer/text_factor_35/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_35/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_35/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_35/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_35/strided_sliceStridedSlice input_layer/text_factor_35/Shape.input_layer/text_factor_35/strided_slice/stack0input_layer/text_factor_35/strided_slice/stack_10input_layer/text_factor_35/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
l
*input_layer/text_factor_35/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_35/Reshape/shapePack(input_layer/text_factor_35/strided_slice*input_layer/text_factor_35/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_35/ReshapeReshapeinput_layer/text_factor_35/Cast(input_layer/text_factor_35/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_36/CastCastExpandDims_67*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_36/ShapeShapeinput_layer/text_factor_36/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_36/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_36/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
z
0input_layer/text_factor_36/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
і
(input_layer/text_factor_36/strided_sliceStridedSlice input_layer/text_factor_36/Shape.input_layer/text_factor_36/strided_slice/stack0input_layer/text_factor_36/strided_slice/stack_10input_layer/text_factor_36/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
l
*input_layer/text_factor_36/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_36/Reshape/shapePack(input_layer/text_factor_36/strided_slice*input_layer/text_factor_36/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_36/ReshapeReshapeinput_layer/text_factor_36/Cast(input_layer/text_factor_36/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_37/CastCastExpandDims_68*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_37/ShapeShapeinput_layer/text_factor_37/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_37/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
z
0input_layer/text_factor_37/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
z
0input_layer/text_factor_37/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_37/strided_sliceStridedSlice input_layer/text_factor_37/Shape.input_layer/text_factor_37/strided_slice/stack0input_layer/text_factor_37/strided_slice/stack_10input_layer/text_factor_37/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
l
*input_layer/text_factor_37/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_37/Reshape/shapePack(input_layer/text_factor_37/strided_slice*input_layer/text_factor_37/Reshape/shape/1*
N*
_output_shapes
:*
T0
™
"input_layer/text_factor_37/ReshapeReshapeinput_layer/text_factor_37/Cast(input_layer/text_factor_37/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_38/CastCastExpandDims_69*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_38/ShapeShapeinput_layer/text_factor_38/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_38/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_38/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_38/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_38/strided_sliceStridedSlice input_layer/text_factor_38/Shape.input_layer/text_factor_38/strided_slice/stack0input_layer/text_factor_38/strided_slice/stack_10input_layer/text_factor_38/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
l
*input_layer/text_factor_38/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
і
(input_layer/text_factor_38/Reshape/shapePack(input_layer/text_factor_38/strided_slice*input_layer/text_factor_38/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_38/ReshapeReshapeinput_layer/text_factor_38/Cast(input_layer/text_factor_38/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
w
input_layer/text_factor_39/CastCastExpandDims_70*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_39/ShapeShapeinput_layer/text_factor_39/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_39/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_39/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
z
0input_layer/text_factor_39/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_39/strided_sliceStridedSlice input_layer/text_factor_39/Shape.input_layer/text_factor_39/strided_slice/stack0input_layer/text_factor_39/strided_slice/stack_10input_layer/text_factor_39/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
l
*input_layer/text_factor_39/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_39/Reshape/shapePack(input_layer/text_factor_39/strided_slice*input_layer/text_factor_39/Reshape/shape/1*
N*
_output_shapes
:*
T0
™
"input_layer/text_factor_39/ReshapeReshapeinput_layer/text_factor_39/Cast(input_layer/text_factor_39/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
v
input_layer/text_factor_4/CastCastExpandDims_35*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
m
input_layer/text_factor_4/ShapeShapeinput_layer/text_factor_4/Cast*
T0*
_output_shapes
:
w
-input_layer/text_factor_4/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
y
/input_layer/text_factor_4/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/input_layer/text_factor_4/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/text_factor_4/strided_sliceStridedSliceinput_layer/text_factor_4/Shape-input_layer/text_factor_4/strided_slice/stack/input_layer/text_factor_4/strided_slice/stack_1/input_layer/text_factor_4/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
k
)input_layer/text_factor_4/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
±
'input_layer/text_factor_4/Reshape/shapePack'input_layer/text_factor_4/strided_slice)input_layer/text_factor_4/Reshape/shape/1*
N*
_output_shapes
:*
T0
І
!input_layer/text_factor_4/ReshapeReshapeinput_layer/text_factor_4/Cast'input_layer/text_factor_4/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_40/CastCastExpandDims_71*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_40/ShapeShapeinput_layer/text_factor_40/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_40/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_40/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_40/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_40/strided_sliceStridedSlice input_layer/text_factor_40/Shape.input_layer/text_factor_40/strided_slice/stack0input_layer/text_factor_40/strided_slice/stack_10input_layer/text_factor_40/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
l
*input_layer/text_factor_40/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_40/Reshape/shapePack(input_layer/text_factor_40/strided_slice*input_layer/text_factor_40/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_40/ReshapeReshapeinput_layer/text_factor_40/Cast(input_layer/text_factor_40/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
w
input_layer/text_factor_41/CastCastExpandDims_72*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_41/ShapeShapeinput_layer/text_factor_41/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_41/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_41/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_41/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
і
(input_layer/text_factor_41/strided_sliceStridedSlice input_layer/text_factor_41/Shape.input_layer/text_factor_41/strided_slice/stack0input_layer/text_factor_41/strided_slice/stack_10input_layer/text_factor_41/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
l
*input_layer/text_factor_41/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_41/Reshape/shapePack(input_layer/text_factor_41/strided_slice*input_layer/text_factor_41/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_41/ReshapeReshapeinput_layer/text_factor_41/Cast(input_layer/text_factor_41/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_42/CastCastExpandDims_73*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_42/ShapeShapeinput_layer/text_factor_42/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_42/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_42/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_42/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_42/strided_sliceStridedSlice input_layer/text_factor_42/Shape.input_layer/text_factor_42/strided_slice/stack0input_layer/text_factor_42/strided_slice/stack_10input_layer/text_factor_42/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
l
*input_layer/text_factor_42/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_42/Reshape/shapePack(input_layer/text_factor_42/strided_slice*input_layer/text_factor_42/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_42/ReshapeReshapeinput_layer/text_factor_42/Cast(input_layer/text_factor_42/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
w
input_layer/text_factor_43/CastCastExpandDims_74*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_43/ShapeShapeinput_layer/text_factor_43/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_43/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
z
0input_layer/text_factor_43/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_43/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
і
(input_layer/text_factor_43/strided_sliceStridedSlice input_layer/text_factor_43/Shape.input_layer/text_factor_43/strided_slice/stack0input_layer/text_factor_43/strided_slice/stack_10input_layer/text_factor_43/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
l
*input_layer/text_factor_43/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_43/Reshape/shapePack(input_layer/text_factor_43/strided_slice*input_layer/text_factor_43/Reshape/shape/1*
_output_shapes
:*
T0*
N
™
"input_layer/text_factor_43/ReshapeReshapeinput_layer/text_factor_43/Cast(input_layer/text_factor_43/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_44/CastCastExpandDims_75*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_44/ShapeShapeinput_layer/text_factor_44/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_44/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
z
0input_layer/text_factor_44/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_44/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_44/strided_sliceStridedSlice input_layer/text_factor_44/Shape.input_layer/text_factor_44/strided_slice/stack0input_layer/text_factor_44/strided_slice/stack_10input_layer/text_factor_44/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
l
*input_layer/text_factor_44/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_44/Reshape/shapePack(input_layer/text_factor_44/strided_slice*input_layer/text_factor_44/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_44/ReshapeReshapeinput_layer/text_factor_44/Cast(input_layer/text_factor_44/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_45/CastCastExpandDims_76*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_45/ShapeShapeinput_layer/text_factor_45/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_45/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_45/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_45/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_45/strided_sliceStridedSlice input_layer/text_factor_45/Shape.input_layer/text_factor_45/strided_slice/stack0input_layer/text_factor_45/strided_slice/stack_10input_layer/text_factor_45/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
l
*input_layer/text_factor_45/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_45/Reshape/shapePack(input_layer/text_factor_45/strided_slice*input_layer/text_factor_45/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_45/ReshapeReshapeinput_layer/text_factor_45/Cast(input_layer/text_factor_45/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_46/CastCastExpandDims_77*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_46/ShapeShapeinput_layer/text_factor_46/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_46/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
z
0input_layer/text_factor_46/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
z
0input_layer/text_factor_46/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
і
(input_layer/text_factor_46/strided_sliceStridedSlice input_layer/text_factor_46/Shape.input_layer/text_factor_46/strided_slice/stack0input_layer/text_factor_46/strided_slice/stack_10input_layer/text_factor_46/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
l
*input_layer/text_factor_46/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
і
(input_layer/text_factor_46/Reshape/shapePack(input_layer/text_factor_46/strided_slice*input_layer/text_factor_46/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_46/ReshapeReshapeinput_layer/text_factor_46/Cast(input_layer/text_factor_46/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_47/CastCastExpandDims_78*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_47/ShapeShapeinput_layer/text_factor_47/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_47/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_47/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
z
0input_layer/text_factor_47/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
і
(input_layer/text_factor_47/strided_sliceStridedSlice input_layer/text_factor_47/Shape.input_layer/text_factor_47/strided_slice/stack0input_layer/text_factor_47/strided_slice/stack_10input_layer/text_factor_47/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
l
*input_layer/text_factor_47/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_47/Reshape/shapePack(input_layer/text_factor_47/strided_slice*input_layer/text_factor_47/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_47/ReshapeReshapeinput_layer/text_factor_47/Cast(input_layer/text_factor_47/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_48/CastCastExpandDims_79*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_48/ShapeShapeinput_layer/text_factor_48/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_48/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_48/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_48/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
і
(input_layer/text_factor_48/strided_sliceStridedSlice input_layer/text_factor_48/Shape.input_layer/text_factor_48/strided_slice/stack0input_layer/text_factor_48/strided_slice/stack_10input_layer/text_factor_48/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
l
*input_layer/text_factor_48/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_48/Reshape/shapePack(input_layer/text_factor_48/strided_slice*input_layer/text_factor_48/Reshape/shape/1*
N*
_output_shapes
:*
T0
™
"input_layer/text_factor_48/ReshapeReshapeinput_layer/text_factor_48/Cast(input_layer/text_factor_48/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_49/CastCastExpandDims_80*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_49/ShapeShapeinput_layer/text_factor_49/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_49/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_49/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_49/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
і
(input_layer/text_factor_49/strided_sliceStridedSlice input_layer/text_factor_49/Shape.input_layer/text_factor_49/strided_slice/stack0input_layer/text_factor_49/strided_slice/stack_10input_layer/text_factor_49/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
l
*input_layer/text_factor_49/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_49/Reshape/shapePack(input_layer/text_factor_49/strided_slice*input_layer/text_factor_49/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_49/ReshapeReshapeinput_layer/text_factor_49/Cast(input_layer/text_factor_49/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
v
input_layer/text_factor_5/CastCastExpandDims_36*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
m
input_layer/text_factor_5/ShapeShapeinput_layer/text_factor_5/Cast*
T0*
_output_shapes
:
w
-input_layer/text_factor_5/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/input_layer/text_factor_5/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/input_layer/text_factor_5/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ѓ
'input_layer/text_factor_5/strided_sliceStridedSliceinput_layer/text_factor_5/Shape-input_layer/text_factor_5/strided_slice/stack/input_layer/text_factor_5/strided_slice/stack_1/input_layer/text_factor_5/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
k
)input_layer/text_factor_5/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
±
'input_layer/text_factor_5/Reshape/shapePack'input_layer/text_factor_5/strided_slice)input_layer/text_factor_5/Reshape/shape/1*
_output_shapes
:*
T0*
N
І
!input_layer/text_factor_5/ReshapeReshapeinput_layer/text_factor_5/Cast'input_layer/text_factor_5/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
w
input_layer/text_factor_50/CastCastExpandDims_81*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_50/ShapeShapeinput_layer/text_factor_50/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_50/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
z
0input_layer/text_factor_50/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_50/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_50/strided_sliceStridedSlice input_layer/text_factor_50/Shape.input_layer/text_factor_50/strided_slice/stack0input_layer/text_factor_50/strided_slice/stack_10input_layer/text_factor_50/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
l
*input_layer/text_factor_50/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_50/Reshape/shapePack(input_layer/text_factor_50/strided_slice*input_layer/text_factor_50/Reshape/shape/1*
_output_shapes
:*
T0*
N
™
"input_layer/text_factor_50/ReshapeReshapeinput_layer/text_factor_50/Cast(input_layer/text_factor_50/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
w
input_layer/text_factor_51/CastCastExpandDims_82*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_51/ShapeShapeinput_layer/text_factor_51/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_51/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_51/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
z
0input_layer/text_factor_51/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_51/strided_sliceStridedSlice input_layer/text_factor_51/Shape.input_layer/text_factor_51/strided_slice/stack0input_layer/text_factor_51/strided_slice/stack_10input_layer/text_factor_51/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
l
*input_layer/text_factor_51/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_51/Reshape/shapePack(input_layer/text_factor_51/strided_slice*input_layer/text_factor_51/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_51/ReshapeReshapeinput_layer/text_factor_51/Cast(input_layer/text_factor_51/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
w
input_layer/text_factor_52/CastCastExpandDims_83*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_52/ShapeShapeinput_layer/text_factor_52/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_52/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_52/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_52/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
і
(input_layer/text_factor_52/strided_sliceStridedSlice input_layer/text_factor_52/Shape.input_layer/text_factor_52/strided_slice/stack0input_layer/text_factor_52/strided_slice/stack_10input_layer/text_factor_52/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
l
*input_layer/text_factor_52/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
і
(input_layer/text_factor_52/Reshape/shapePack(input_layer/text_factor_52/strided_slice*input_layer/text_factor_52/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_52/ReshapeReshapeinput_layer/text_factor_52/Cast(input_layer/text_factor_52/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
w
input_layer/text_factor_53/CastCastExpandDims_84*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_53/ShapeShapeinput_layer/text_factor_53/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_53/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_53/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
z
0input_layer/text_factor_53/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_53/strided_sliceStridedSlice input_layer/text_factor_53/Shape.input_layer/text_factor_53/strided_slice/stack0input_layer/text_factor_53/strided_slice/stack_10input_layer/text_factor_53/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
l
*input_layer/text_factor_53/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_53/Reshape/shapePack(input_layer/text_factor_53/strided_slice*input_layer/text_factor_53/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_53/ReshapeReshapeinput_layer/text_factor_53/Cast(input_layer/text_factor_53/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
w
input_layer/text_factor_54/CastCastExpandDims_85*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_54/ShapeShapeinput_layer/text_factor_54/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_54/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_54/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_54/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_54/strided_sliceStridedSlice input_layer/text_factor_54/Shape.input_layer/text_factor_54/strided_slice/stack0input_layer/text_factor_54/strided_slice/stack_10input_layer/text_factor_54/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
l
*input_layer/text_factor_54/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_54/Reshape/shapePack(input_layer/text_factor_54/strided_slice*input_layer/text_factor_54/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_54/ReshapeReshapeinput_layer/text_factor_54/Cast(input_layer/text_factor_54/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_55/CastCastExpandDims_86*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_55/ShapeShapeinput_layer/text_factor_55/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_55/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_55/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
z
0input_layer/text_factor_55/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_55/strided_sliceStridedSlice input_layer/text_factor_55/Shape.input_layer/text_factor_55/strided_slice/stack0input_layer/text_factor_55/strided_slice/stack_10input_layer/text_factor_55/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
l
*input_layer/text_factor_55/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
і
(input_layer/text_factor_55/Reshape/shapePack(input_layer/text_factor_55/strided_slice*input_layer/text_factor_55/Reshape/shape/1*
N*
_output_shapes
:*
T0
™
"input_layer/text_factor_55/ReshapeReshapeinput_layer/text_factor_55/Cast(input_layer/text_factor_55/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_56/CastCastExpandDims_87*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_56/ShapeShapeinput_layer/text_factor_56/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_56/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_56/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_56/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_56/strided_sliceStridedSlice input_layer/text_factor_56/Shape.input_layer/text_factor_56/strided_slice/stack0input_layer/text_factor_56/strided_slice/stack_10input_layer/text_factor_56/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
l
*input_layer/text_factor_56/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
і
(input_layer/text_factor_56/Reshape/shapePack(input_layer/text_factor_56/strided_slice*input_layer/text_factor_56/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_56/ReshapeReshapeinput_layer/text_factor_56/Cast(input_layer/text_factor_56/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_57/CastCastExpandDims_88*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_57/ShapeShapeinput_layer/text_factor_57/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_57/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_57/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_57/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_57/strided_sliceStridedSlice input_layer/text_factor_57/Shape.input_layer/text_factor_57/strided_slice/stack0input_layer/text_factor_57/strided_slice/stack_10input_layer/text_factor_57/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
l
*input_layer/text_factor_57/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
і
(input_layer/text_factor_57/Reshape/shapePack(input_layer/text_factor_57/strided_slice*input_layer/text_factor_57/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_57/ReshapeReshapeinput_layer/text_factor_57/Cast(input_layer/text_factor_57/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_58/CastCastExpandDims_89*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_58/ShapeShapeinput_layer/text_factor_58/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_58/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_58/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_58/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_58/strided_sliceStridedSlice input_layer/text_factor_58/Shape.input_layer/text_factor_58/strided_slice/stack0input_layer/text_factor_58/strided_slice/stack_10input_layer/text_factor_58/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
l
*input_layer/text_factor_58/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_58/Reshape/shapePack(input_layer/text_factor_58/strided_slice*input_layer/text_factor_58/Reshape/shape/1*
N*
_output_shapes
:*
T0
™
"input_layer/text_factor_58/ReshapeReshapeinput_layer/text_factor_58/Cast(input_layer/text_factor_58/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_59/CastCastExpandDims_90*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_59/ShapeShapeinput_layer/text_factor_59/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_59/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_59/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_59/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
і
(input_layer/text_factor_59/strided_sliceStridedSlice input_layer/text_factor_59/Shape.input_layer/text_factor_59/strided_slice/stack0input_layer/text_factor_59/strided_slice/stack_10input_layer/text_factor_59/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
l
*input_layer/text_factor_59/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_59/Reshape/shapePack(input_layer/text_factor_59/strided_slice*input_layer/text_factor_59/Reshape/shape/1*
N*
_output_shapes
:*
T0
™
"input_layer/text_factor_59/ReshapeReshapeinput_layer/text_factor_59/Cast(input_layer/text_factor_59/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
v
input_layer/text_factor_6/CastCastExpandDims_37*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
m
input_layer/text_factor_6/ShapeShapeinput_layer/text_factor_6/Cast*
_output_shapes
:*
T0
w
-input_layer/text_factor_6/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/input_layer/text_factor_6/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/input_layer/text_factor_6/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/text_factor_6/strided_sliceStridedSliceinput_layer/text_factor_6/Shape-input_layer/text_factor_6/strided_slice/stack/input_layer/text_factor_6/strided_slice/stack_1/input_layer/text_factor_6/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
k
)input_layer/text_factor_6/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
±
'input_layer/text_factor_6/Reshape/shapePack'input_layer/text_factor_6/strided_slice)input_layer/text_factor_6/Reshape/shape/1*
_output_shapes
:*
T0*
N
І
!input_layer/text_factor_6/ReshapeReshapeinput_layer/text_factor_6/Cast'input_layer/text_factor_6/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_60/CastCastExpandDims_91*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_60/ShapeShapeinput_layer/text_factor_60/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_60/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_60/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
z
0input_layer/text_factor_60/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_60/strided_sliceStridedSlice input_layer/text_factor_60/Shape.input_layer/text_factor_60/strided_slice/stack0input_layer/text_factor_60/strided_slice/stack_10input_layer/text_factor_60/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
l
*input_layer/text_factor_60/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_60/Reshape/shapePack(input_layer/text_factor_60/strided_slice*input_layer/text_factor_60/Reshape/shape/1*
_output_shapes
:*
T0*
N
™
"input_layer/text_factor_60/ReshapeReshapeinput_layer/text_factor_60/Cast(input_layer/text_factor_60/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
w
input_layer/text_factor_61/CastCastExpandDims_92*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_61/ShapeShapeinput_layer/text_factor_61/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_61/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_61/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_61/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_61/strided_sliceStridedSlice input_layer/text_factor_61/Shape.input_layer/text_factor_61/strided_slice/stack0input_layer/text_factor_61/strided_slice/stack_10input_layer/text_factor_61/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
l
*input_layer/text_factor_61/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
і
(input_layer/text_factor_61/Reshape/shapePack(input_layer/text_factor_61/strided_slice*input_layer/text_factor_61/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_61/ReshapeReshapeinput_layer/text_factor_61/Cast(input_layer/text_factor_61/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
w
input_layer/text_factor_62/CastCastExpandDims_93*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_62/ShapeShapeinput_layer/text_factor_62/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_62/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
z
0input_layer/text_factor_62/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_62/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_62/strided_sliceStridedSlice input_layer/text_factor_62/Shape.input_layer/text_factor_62/strided_slice/stack0input_layer/text_factor_62/strided_slice/stack_10input_layer/text_factor_62/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
l
*input_layer/text_factor_62/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_62/Reshape/shapePack(input_layer/text_factor_62/strided_slice*input_layer/text_factor_62/Reshape/shape/1*
N*
_output_shapes
:*
T0
™
"input_layer/text_factor_62/ReshapeReshapeinput_layer/text_factor_62/Cast(input_layer/text_factor_62/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_63/CastCastExpandDims_94*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_63/ShapeShapeinput_layer/text_factor_63/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_63/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
z
0input_layer/text_factor_63/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_63/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_63/strided_sliceStridedSlice input_layer/text_factor_63/Shape.input_layer/text_factor_63/strided_slice/stack0input_layer/text_factor_63/strided_slice/stack_10input_layer/text_factor_63/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
l
*input_layer/text_factor_63/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_63/Reshape/shapePack(input_layer/text_factor_63/strided_slice*input_layer/text_factor_63/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_63/ReshapeReshapeinput_layer/text_factor_63/Cast(input_layer/text_factor_63/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_64/CastCastExpandDims_95*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_64/ShapeShapeinput_layer/text_factor_64/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_64/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_64/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_64/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
і
(input_layer/text_factor_64/strided_sliceStridedSlice input_layer/text_factor_64/Shape.input_layer/text_factor_64/strided_slice/stack0input_layer/text_factor_64/strided_slice/stack_10input_layer/text_factor_64/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
l
*input_layer/text_factor_64/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_64/Reshape/shapePack(input_layer/text_factor_64/strided_slice*input_layer/text_factor_64/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_64/ReshapeReshapeinput_layer/text_factor_64/Cast(input_layer/text_factor_64/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_65/CastCastExpandDims_96*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_65/ShapeShapeinput_layer/text_factor_65/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_65/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_65/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_65/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
і
(input_layer/text_factor_65/strided_sliceStridedSlice input_layer/text_factor_65/Shape.input_layer/text_factor_65/strided_slice/stack0input_layer/text_factor_65/strided_slice/stack_10input_layer/text_factor_65/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
l
*input_layer/text_factor_65/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
і
(input_layer/text_factor_65/Reshape/shapePack(input_layer/text_factor_65/strided_slice*input_layer/text_factor_65/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_65/ReshapeReshapeinput_layer/text_factor_65/Cast(input_layer/text_factor_65/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_66/CastCastExpandDims_97*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_66/ShapeShapeinput_layer/text_factor_66/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_66/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_66/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_66/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
і
(input_layer/text_factor_66/strided_sliceStridedSlice input_layer/text_factor_66/Shape.input_layer/text_factor_66/strided_slice/stack0input_layer/text_factor_66/strided_slice/stack_10input_layer/text_factor_66/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
l
*input_layer/text_factor_66/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_66/Reshape/shapePack(input_layer/text_factor_66/strided_slice*input_layer/text_factor_66/Reshape/shape/1*
N*
_output_shapes
:*
T0
™
"input_layer/text_factor_66/ReshapeReshapeinput_layer/text_factor_66/Cast(input_layer/text_factor_66/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
w
input_layer/text_factor_67/CastCastExpandDims_98*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_67/ShapeShapeinput_layer/text_factor_67/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_67/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
z
0input_layer/text_factor_67/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
z
0input_layer/text_factor_67/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_67/strided_sliceStridedSlice input_layer/text_factor_67/Shape.input_layer/text_factor_67/strided_slice/stack0input_layer/text_factor_67/strided_slice/stack_10input_layer/text_factor_67/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
l
*input_layer/text_factor_67/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
і
(input_layer/text_factor_67/Reshape/shapePack(input_layer/text_factor_67/strided_slice*input_layer/text_factor_67/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_67/ReshapeReshapeinput_layer/text_factor_67/Cast(input_layer/text_factor_67/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
w
input_layer/text_factor_68/CastCastExpandDims_99*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_68/ShapeShapeinput_layer/text_factor_68/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_68/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
z
0input_layer/text_factor_68/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_68/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_68/strided_sliceStridedSlice input_layer/text_factor_68/Shape.input_layer/text_factor_68/strided_slice/stack0input_layer/text_factor_68/strided_slice/stack_10input_layer/text_factor_68/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
l
*input_layer/text_factor_68/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
і
(input_layer/text_factor_68/Reshape/shapePack(input_layer/text_factor_68/strided_slice*input_layer/text_factor_68/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_68/ReshapeReshapeinput_layer/text_factor_68/Cast(input_layer/text_factor_68/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
x
input_layer/text_factor_69/CastCastExpandDims_100*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_69/ShapeShapeinput_layer/text_factor_69/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_69/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_69/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_69/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_69/strided_sliceStridedSlice input_layer/text_factor_69/Shape.input_layer/text_factor_69/strided_slice/stack0input_layer/text_factor_69/strided_slice/stack_10input_layer/text_factor_69/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
l
*input_layer/text_factor_69/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
і
(input_layer/text_factor_69/Reshape/shapePack(input_layer/text_factor_69/strided_slice*input_layer/text_factor_69/Reshape/shape/1*
N*
_output_shapes
:*
T0
™
"input_layer/text_factor_69/ReshapeReshapeinput_layer/text_factor_69/Cast(input_layer/text_factor_69/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
v
input_layer/text_factor_7/CastCastExpandDims_38*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
m
input_layer/text_factor_7/ShapeShapeinput_layer/text_factor_7/Cast*
T0*
_output_shapes
:
w
-input_layer/text_factor_7/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/input_layer/text_factor_7/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/input_layer/text_factor_7/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/text_factor_7/strided_sliceStridedSliceinput_layer/text_factor_7/Shape-input_layer/text_factor_7/strided_slice/stack/input_layer/text_factor_7/strided_slice/stack_1/input_layer/text_factor_7/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
k
)input_layer/text_factor_7/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
±
'input_layer/text_factor_7/Reshape/shapePack'input_layer/text_factor_7/strided_slice)input_layer/text_factor_7/Reshape/shape/1*
T0*
N*
_output_shapes
:
І
!input_layer/text_factor_7/ReshapeReshapeinput_layer/text_factor_7/Cast'input_layer/text_factor_7/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
x
input_layer/text_factor_70/CastCastExpandDims_101*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_70/ShapeShapeinput_layer/text_factor_70/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_70/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_70/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_70/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_70/strided_sliceStridedSlice input_layer/text_factor_70/Shape.input_layer/text_factor_70/strided_slice/stack0input_layer/text_factor_70/strided_slice/stack_10input_layer/text_factor_70/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
l
*input_layer/text_factor_70/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
і
(input_layer/text_factor_70/Reshape/shapePack(input_layer/text_factor_70/strided_slice*input_layer/text_factor_70/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_70/ReshapeReshapeinput_layer/text_factor_70/Cast(input_layer/text_factor_70/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
x
input_layer/text_factor_71/CastCastExpandDims_102*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_71/ShapeShapeinput_layer/text_factor_71/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_71/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_71/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_71/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
і
(input_layer/text_factor_71/strided_sliceStridedSlice input_layer/text_factor_71/Shape.input_layer/text_factor_71/strided_slice/stack0input_layer/text_factor_71/strided_slice/stack_10input_layer/text_factor_71/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
l
*input_layer/text_factor_71/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
і
(input_layer/text_factor_71/Reshape/shapePack(input_layer/text_factor_71/strided_slice*input_layer/text_factor_71/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_71/ReshapeReshapeinput_layer/text_factor_71/Cast(input_layer/text_factor_71/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
x
input_layer/text_factor_72/CastCastExpandDims_103*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_72/ShapeShapeinput_layer/text_factor_72/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_72/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_72/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_72/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_72/strided_sliceStridedSlice input_layer/text_factor_72/Shape.input_layer/text_factor_72/strided_slice/stack0input_layer/text_factor_72/strided_slice/stack_10input_layer/text_factor_72/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
l
*input_layer/text_factor_72/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
і
(input_layer/text_factor_72/Reshape/shapePack(input_layer/text_factor_72/strided_slice*input_layer/text_factor_72/Reshape/shape/1*
_output_shapes
:*
T0*
N
™
"input_layer/text_factor_72/ReshapeReshapeinput_layer/text_factor_72/Cast(input_layer/text_factor_72/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
x
input_layer/text_factor_73/CastCastExpandDims_104*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_73/ShapeShapeinput_layer/text_factor_73/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_73/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
z
0input_layer/text_factor_73/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
z
0input_layer/text_factor_73/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
і
(input_layer/text_factor_73/strided_sliceStridedSlice input_layer/text_factor_73/Shape.input_layer/text_factor_73/strided_slice/stack0input_layer/text_factor_73/strided_slice/stack_10input_layer/text_factor_73/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
l
*input_layer/text_factor_73/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
і
(input_layer/text_factor_73/Reshape/shapePack(input_layer/text_factor_73/strided_slice*input_layer/text_factor_73/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_73/ReshapeReshapeinput_layer/text_factor_73/Cast(input_layer/text_factor_73/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
x
input_layer/text_factor_74/CastCastExpandDims_105*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_74/ShapeShapeinput_layer/text_factor_74/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_74/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_74/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_74/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_74/strided_sliceStridedSlice input_layer/text_factor_74/Shape.input_layer/text_factor_74/strided_slice/stack0input_layer/text_factor_74/strided_slice/stack_10input_layer/text_factor_74/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
l
*input_layer/text_factor_74/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_74/Reshape/shapePack(input_layer/text_factor_74/strided_slice*input_layer/text_factor_74/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_74/ReshapeReshapeinput_layer/text_factor_74/Cast(input_layer/text_factor_74/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
x
input_layer/text_factor_75/CastCastExpandDims_106*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_75/ShapeShapeinput_layer/text_factor_75/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_75/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
z
0input_layer/text_factor_75/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_75/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_75/strided_sliceStridedSlice input_layer/text_factor_75/Shape.input_layer/text_factor_75/strided_slice/stack0input_layer/text_factor_75/strided_slice/stack_10input_layer/text_factor_75/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
l
*input_layer/text_factor_75/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_75/Reshape/shapePack(input_layer/text_factor_75/strided_slice*input_layer/text_factor_75/Reshape/shape/1*
N*
_output_shapes
:*
T0
™
"input_layer/text_factor_75/ReshapeReshapeinput_layer/text_factor_75/Cast(input_layer/text_factor_75/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
x
input_layer/text_factor_76/CastCastExpandDims_107*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_76/ShapeShapeinput_layer/text_factor_76/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_76/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
z
0input_layer/text_factor_76/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_76/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_76/strided_sliceStridedSlice input_layer/text_factor_76/Shape.input_layer/text_factor_76/strided_slice/stack0input_layer/text_factor_76/strided_slice/stack_10input_layer/text_factor_76/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
l
*input_layer/text_factor_76/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_76/Reshape/shapePack(input_layer/text_factor_76/strided_slice*input_layer/text_factor_76/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_76/ReshapeReshapeinput_layer/text_factor_76/Cast(input_layer/text_factor_76/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
x
input_layer/text_factor_77/CastCastExpandDims_108*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_77/ShapeShapeinput_layer/text_factor_77/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_77/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_77/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_77/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_77/strided_sliceStridedSlice input_layer/text_factor_77/Shape.input_layer/text_factor_77/strided_slice/stack0input_layer/text_factor_77/strided_slice/stack_10input_layer/text_factor_77/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
l
*input_layer/text_factor_77/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_77/Reshape/shapePack(input_layer/text_factor_77/strided_slice*input_layer/text_factor_77/Reshape/shape/1*
N*
_output_shapes
:*
T0
™
"input_layer/text_factor_77/ReshapeReshapeinput_layer/text_factor_77/Cast(input_layer/text_factor_77/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
x
input_layer/text_factor_78/CastCastExpandDims_109*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_78/ShapeShapeinput_layer/text_factor_78/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_78/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_78/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_78/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_78/strided_sliceStridedSlice input_layer/text_factor_78/Shape.input_layer/text_factor_78/strided_slice/stack0input_layer/text_factor_78/strided_slice/stack_10input_layer/text_factor_78/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
l
*input_layer/text_factor_78/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
і
(input_layer/text_factor_78/Reshape/shapePack(input_layer/text_factor_78/strided_slice*input_layer/text_factor_78/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_78/ReshapeReshapeinput_layer/text_factor_78/Cast(input_layer/text_factor_78/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
x
input_layer/text_factor_79/CastCastExpandDims_110*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_79/ShapeShapeinput_layer/text_factor_79/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_79/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_79/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_79/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_79/strided_sliceStridedSlice input_layer/text_factor_79/Shape.input_layer/text_factor_79/strided_slice/stack0input_layer/text_factor_79/strided_slice/stack_10input_layer/text_factor_79/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
l
*input_layer/text_factor_79/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
і
(input_layer/text_factor_79/Reshape/shapePack(input_layer/text_factor_79/strided_slice*input_layer/text_factor_79/Reshape/shape/1*
N*
_output_shapes
:*
T0
™
"input_layer/text_factor_79/ReshapeReshapeinput_layer/text_factor_79/Cast(input_layer/text_factor_79/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
v
input_layer/text_factor_8/CastCastExpandDims_39*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
m
input_layer/text_factor_8/ShapeShapeinput_layer/text_factor_8/Cast*
T0*
_output_shapes
:
w
-input_layer/text_factor_8/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/input_layer/text_factor_8/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/input_layer/text_factor_8/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/text_factor_8/strided_sliceStridedSliceinput_layer/text_factor_8/Shape-input_layer/text_factor_8/strided_slice/stack/input_layer/text_factor_8/strided_slice/stack_1/input_layer/text_factor_8/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
k
)input_layer/text_factor_8/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
±
'input_layer/text_factor_8/Reshape/shapePack'input_layer/text_factor_8/strided_slice)input_layer/text_factor_8/Reshape/shape/1*
T0*
N*
_output_shapes
:
І
!input_layer/text_factor_8/ReshapeReshapeinput_layer/text_factor_8/Cast'input_layer/text_factor_8/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
x
input_layer/text_factor_80/CastCastExpandDims_111*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_80/ShapeShapeinput_layer/text_factor_80/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_80/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_80/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_80/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_80/strided_sliceStridedSlice input_layer/text_factor_80/Shape.input_layer/text_factor_80/strided_slice/stack0input_layer/text_factor_80/strided_slice/stack_10input_layer/text_factor_80/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
l
*input_layer/text_factor_80/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_80/Reshape/shapePack(input_layer/text_factor_80/strided_slice*input_layer/text_factor_80/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_80/ReshapeReshapeinput_layer/text_factor_80/Cast(input_layer/text_factor_80/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
x
input_layer/text_factor_81/CastCastExpandDims_112*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_81/ShapeShapeinput_layer/text_factor_81/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_81/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_81/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_81/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_81/strided_sliceStridedSlice input_layer/text_factor_81/Shape.input_layer/text_factor_81/strided_slice/stack0input_layer/text_factor_81/strided_slice/stack_10input_layer/text_factor_81/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
l
*input_layer/text_factor_81/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_81/Reshape/shapePack(input_layer/text_factor_81/strided_slice*input_layer/text_factor_81/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_81/ReshapeReshapeinput_layer/text_factor_81/Cast(input_layer/text_factor_81/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
x
input_layer/text_factor_82/CastCastExpandDims_113*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_82/ShapeShapeinput_layer/text_factor_82/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_82/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
z
0input_layer/text_factor_82/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_82/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_82/strided_sliceStridedSlice input_layer/text_factor_82/Shape.input_layer/text_factor_82/strided_slice/stack0input_layer/text_factor_82/strided_slice/stack_10input_layer/text_factor_82/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
l
*input_layer/text_factor_82/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_82/Reshape/shapePack(input_layer/text_factor_82/strided_slice*input_layer/text_factor_82/Reshape/shape/1*
N*
_output_shapes
:*
T0
™
"input_layer/text_factor_82/ReshapeReshapeinput_layer/text_factor_82/Cast(input_layer/text_factor_82/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
x
input_layer/text_factor_83/CastCastExpandDims_114*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_83/ShapeShapeinput_layer/text_factor_83/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_83/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
z
0input_layer/text_factor_83/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_83/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_83/strided_sliceStridedSlice input_layer/text_factor_83/Shape.input_layer/text_factor_83/strided_slice/stack0input_layer/text_factor_83/strided_slice/stack_10input_layer/text_factor_83/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
l
*input_layer/text_factor_83/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_83/Reshape/shapePack(input_layer/text_factor_83/strided_slice*input_layer/text_factor_83/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_83/ReshapeReshapeinput_layer/text_factor_83/Cast(input_layer/text_factor_83/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
x
input_layer/text_factor_84/CastCastExpandDims_115*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_84/ShapeShapeinput_layer/text_factor_84/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_84/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_84/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_84/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_84/strided_sliceStridedSlice input_layer/text_factor_84/Shape.input_layer/text_factor_84/strided_slice/stack0input_layer/text_factor_84/strided_slice/stack_10input_layer/text_factor_84/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
l
*input_layer/text_factor_84/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_84/Reshape/shapePack(input_layer/text_factor_84/strided_slice*input_layer/text_factor_84/Reshape/shape/1*
_output_shapes
:*
T0*
N
™
"input_layer/text_factor_84/ReshapeReshapeinput_layer/text_factor_84/Cast(input_layer/text_factor_84/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
x
input_layer/text_factor_85/CastCastExpandDims_116*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_85/ShapeShapeinput_layer/text_factor_85/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_85/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
z
0input_layer/text_factor_85/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
z
0input_layer/text_factor_85/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
і
(input_layer/text_factor_85/strided_sliceStridedSlice input_layer/text_factor_85/Shape.input_layer/text_factor_85/strided_slice/stack0input_layer/text_factor_85/strided_slice/stack_10input_layer/text_factor_85/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
l
*input_layer/text_factor_85/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
і
(input_layer/text_factor_85/Reshape/shapePack(input_layer/text_factor_85/strided_slice*input_layer/text_factor_85/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_85/ReshapeReshapeinput_layer/text_factor_85/Cast(input_layer/text_factor_85/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
x
input_layer/text_factor_86/CastCastExpandDims_117*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_86/ShapeShapeinput_layer/text_factor_86/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_86/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
z
0input_layer/text_factor_86/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_86/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_86/strided_sliceStridedSlice input_layer/text_factor_86/Shape.input_layer/text_factor_86/strided_slice/stack0input_layer/text_factor_86/strided_slice/stack_10input_layer/text_factor_86/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
l
*input_layer/text_factor_86/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_86/Reshape/shapePack(input_layer/text_factor_86/strided_slice*input_layer/text_factor_86/Reshape/shape/1*
N*
_output_shapes
:*
T0
™
"input_layer/text_factor_86/ReshapeReshapeinput_layer/text_factor_86/Cast(input_layer/text_factor_86/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
x
input_layer/text_factor_87/CastCastExpandDims_118*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_87/ShapeShapeinput_layer/text_factor_87/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_87/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
z
0input_layer/text_factor_87/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_87/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
і
(input_layer/text_factor_87/strided_sliceStridedSlice input_layer/text_factor_87/Shape.input_layer/text_factor_87/strided_slice/stack0input_layer/text_factor_87/strided_slice/stack_10input_layer/text_factor_87/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
l
*input_layer/text_factor_87/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_87/Reshape/shapePack(input_layer/text_factor_87/strided_slice*input_layer/text_factor_87/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_87/ReshapeReshapeinput_layer/text_factor_87/Cast(input_layer/text_factor_87/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
x
input_layer/text_factor_88/CastCastExpandDims_119*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_88/ShapeShapeinput_layer/text_factor_88/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_88/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_88/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_88/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_88/strided_sliceStridedSlice input_layer/text_factor_88/Shape.input_layer/text_factor_88/strided_slice/stack0input_layer/text_factor_88/strided_slice/stack_10input_layer/text_factor_88/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
l
*input_layer/text_factor_88/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_88/Reshape/shapePack(input_layer/text_factor_88/strided_slice*input_layer/text_factor_88/Reshape/shape/1*
_output_shapes
:*
T0*
N
™
"input_layer/text_factor_88/ReshapeReshapeinput_layer/text_factor_88/Cast(input_layer/text_factor_88/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
x
input_layer/text_factor_89/CastCastExpandDims_120*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_89/ShapeShapeinput_layer/text_factor_89/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_89/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_89/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_89/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
і
(input_layer/text_factor_89/strided_sliceStridedSlice input_layer/text_factor_89/Shape.input_layer/text_factor_89/strided_slice/stack0input_layer/text_factor_89/strided_slice/stack_10input_layer/text_factor_89/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
l
*input_layer/text_factor_89/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_89/Reshape/shapePack(input_layer/text_factor_89/strided_slice*input_layer/text_factor_89/Reshape/shape/1*
_output_shapes
:*
T0*
N
™
"input_layer/text_factor_89/ReshapeReshapeinput_layer/text_factor_89/Cast(input_layer/text_factor_89/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
v
input_layer/text_factor_9/CastCastExpandDims_40*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
m
input_layer/text_factor_9/ShapeShapeinput_layer/text_factor_9/Cast*
_output_shapes
:*
T0
w
-input_layer/text_factor_9/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/input_layer/text_factor_9/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/input_layer/text_factor_9/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/text_factor_9/strided_sliceStridedSliceinput_layer/text_factor_9/Shape-input_layer/text_factor_9/strided_slice/stack/input_layer/text_factor_9/strided_slice/stack_1/input_layer/text_factor_9/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
k
)input_layer/text_factor_9/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
±
'input_layer/text_factor_9/Reshape/shapePack'input_layer/text_factor_9/strided_slice)input_layer/text_factor_9/Reshape/shape/1*
T0*
N*
_output_shapes
:
І
!input_layer/text_factor_9/ReshapeReshapeinput_layer/text_factor_9/Cast'input_layer/text_factor_9/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
x
input_layer/text_factor_90/CastCastExpandDims_121*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_90/ShapeShapeinput_layer/text_factor_90/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_90/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
z
0input_layer/text_factor_90/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
z
0input_layer/text_factor_90/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_90/strided_sliceStridedSlice input_layer/text_factor_90/Shape.input_layer/text_factor_90/strided_slice/stack0input_layer/text_factor_90/strided_slice/stack_10input_layer/text_factor_90/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
l
*input_layer/text_factor_90/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_90/Reshape/shapePack(input_layer/text_factor_90/strided_slice*input_layer/text_factor_90/Reshape/shape/1*
_output_shapes
:*
T0*
N
™
"input_layer/text_factor_90/ReshapeReshapeinput_layer/text_factor_90/Cast(input_layer/text_factor_90/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
x
input_layer/text_factor_91/CastCastExpandDims_122*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_91/ShapeShapeinput_layer/text_factor_91/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_91/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_91/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_91/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
і
(input_layer/text_factor_91/strided_sliceStridedSlice input_layer/text_factor_91/Shape.input_layer/text_factor_91/strided_slice/stack0input_layer/text_factor_91/strided_slice/stack_10input_layer/text_factor_91/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
l
*input_layer/text_factor_91/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_91/Reshape/shapePack(input_layer/text_factor_91/strided_slice*input_layer/text_factor_91/Reshape/shape/1*
_output_shapes
:*
T0*
N
™
"input_layer/text_factor_91/ReshapeReshapeinput_layer/text_factor_91/Cast(input_layer/text_factor_91/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
x
input_layer/text_factor_92/CastCastExpandDims_123*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_92/ShapeShapeinput_layer/text_factor_92/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_92/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_92/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
z
0input_layer/text_factor_92/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_92/strided_sliceStridedSlice input_layer/text_factor_92/Shape.input_layer/text_factor_92/strided_slice/stack0input_layer/text_factor_92/strided_slice/stack_10input_layer/text_factor_92/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
l
*input_layer/text_factor_92/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
і
(input_layer/text_factor_92/Reshape/shapePack(input_layer/text_factor_92/strided_slice*input_layer/text_factor_92/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_92/ReshapeReshapeinput_layer/text_factor_92/Cast(input_layer/text_factor_92/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
x
input_layer/text_factor_93/CastCastExpandDims_124*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_93/ShapeShapeinput_layer/text_factor_93/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_93/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_93/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_93/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_93/strided_sliceStridedSlice input_layer/text_factor_93/Shape.input_layer/text_factor_93/strided_slice/stack0input_layer/text_factor_93/strided_slice/stack_10input_layer/text_factor_93/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
l
*input_layer/text_factor_93/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_93/Reshape/shapePack(input_layer/text_factor_93/strided_slice*input_layer/text_factor_93/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_93/ReshapeReshapeinput_layer/text_factor_93/Cast(input_layer/text_factor_93/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
x
input_layer/text_factor_94/CastCastExpandDims_125*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_94/ShapeShapeinput_layer/text_factor_94/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_94/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_94/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_94/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_94/strided_sliceStridedSlice input_layer/text_factor_94/Shape.input_layer/text_factor_94/strided_slice/stack0input_layer/text_factor_94/strided_slice/stack_10input_layer/text_factor_94/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
l
*input_layer/text_factor_94/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_94/Reshape/shapePack(input_layer/text_factor_94/strided_slice*input_layer/text_factor_94/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_94/ReshapeReshapeinput_layer/text_factor_94/Cast(input_layer/text_factor_94/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
x
input_layer/text_factor_95/CastCastExpandDims_126*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_95/ShapeShapeinput_layer/text_factor_95/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_95/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_95/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_95/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_95/strided_sliceStridedSlice input_layer/text_factor_95/Shape.input_layer/text_factor_95/strided_slice/stack0input_layer/text_factor_95/strided_slice/stack_10input_layer/text_factor_95/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
l
*input_layer/text_factor_95/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_95/Reshape/shapePack(input_layer/text_factor_95/strided_slice*input_layer/text_factor_95/Reshape/shape/1*
T0*
N*
_output_shapes
:
™
"input_layer/text_factor_95/ReshapeReshapeinput_layer/text_factor_95/Cast(input_layer/text_factor_95/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
x
input_layer/text_factor_96/CastCastExpandDims_127*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_96/ShapeShapeinput_layer/text_factor_96/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_96/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_96/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_96/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_96/strided_sliceStridedSlice input_layer/text_factor_96/Shape.input_layer/text_factor_96/strided_slice/stack0input_layer/text_factor_96/strided_slice/stack_10input_layer/text_factor_96/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
l
*input_layer/text_factor_96/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_96/Reshape/shapePack(input_layer/text_factor_96/strided_slice*input_layer/text_factor_96/Reshape/shape/1*
_output_shapes
:*
T0*
N
™
"input_layer/text_factor_96/ReshapeReshapeinput_layer/text_factor_96/Cast(input_layer/text_factor_96/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
x
input_layer/text_factor_97/CastCastExpandDims_128*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_97/ShapeShapeinput_layer/text_factor_97/Cast*
_output_shapes
:*
T0
x
.input_layer/text_factor_97/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_97/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0input_layer/text_factor_97/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_97/strided_sliceStridedSlice input_layer/text_factor_97/Shape.input_layer/text_factor_97/strided_slice/stack0input_layer/text_factor_97/strided_slice/stack_10input_layer/text_factor_97/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
T0*
Index0
l
*input_layer/text_factor_97/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
і
(input_layer/text_factor_97/Reshape/shapePack(input_layer/text_factor_97/strided_slice*input_layer/text_factor_97/Reshape/shape/1*
N*
_output_shapes
:*
T0
™
"input_layer/text_factor_97/ReshapeReshapeinput_layer/text_factor_97/Cast(input_layer/text_factor_97/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
x
input_layer/text_factor_98/CastCastExpandDims_129*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
o
 input_layer/text_factor_98/ShapeShapeinput_layer/text_factor_98/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_98/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0input_layer/text_factor_98/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
z
0input_layer/text_factor_98/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
і
(input_layer/text_factor_98/strided_sliceStridedSlice input_layer/text_factor_98/Shape.input_layer/text_factor_98/strided_slice/stack0input_layer/text_factor_98/strided_slice/stack_10input_layer/text_factor_98/strided_slice/stack_2*
_output_shapes
: *
shrink_axis_mask*
Index0*
T0
l
*input_layer/text_factor_98/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_98/Reshape/shapePack(input_layer/text_factor_98/strided_slice*input_layer/text_factor_98/Reshape/shape/1*
N*
_output_shapes
:*
T0
™
"input_layer/text_factor_98/ReshapeReshapeinput_layer/text_factor_98/Cast(input_layer/text_factor_98/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
x
input_layer/text_factor_99/CastCastExpandDims_130*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
o
 input_layer/text_factor_99/ShapeShapeinput_layer/text_factor_99/Cast*
T0*
_output_shapes
:
x
.input_layer/text_factor_99/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
z
0input_layer/text_factor_99/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
z
0input_layer/text_factor_99/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
і
(input_layer/text_factor_99/strided_sliceStridedSlice input_layer/text_factor_99/Shape.input_layer/text_factor_99/strided_slice/stack0input_layer/text_factor_99/strided_slice/stack_10input_layer/text_factor_99/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
l
*input_layer/text_factor_99/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
і
(input_layer/text_factor_99/Reshape/shapePack(input_layer/text_factor_99/strided_slice*input_layer/text_factor_99/Reshape/shape/1*
_output_shapes
:*
T0*
N
™
"input_layer/text_factor_99/ReshapeReshapeinput_layer/text_factor_99/Cast(input_layer/text_factor_99/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
v
input_layer/user_factor_0/CastCastExpandDims_11*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
m
input_layer/user_factor_0/ShapeShapeinput_layer/user_factor_0/Cast*
T0*
_output_shapes
:
w
-input_layer/user_factor_0/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/input_layer/user_factor_0/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/input_layer/user_factor_0/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/user_factor_0/strided_sliceStridedSliceinput_layer/user_factor_0/Shape-input_layer/user_factor_0/strided_slice/stack/input_layer/user_factor_0/strided_slice/stack_1/input_layer/user_factor_0/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
k
)input_layer/user_factor_0/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
±
'input_layer/user_factor_0/Reshape/shapePack'input_layer/user_factor_0/strided_slice)input_layer/user_factor_0/Reshape/shape/1*
T0*
N*
_output_shapes
:
І
!input_layer/user_factor_0/ReshapeReshapeinput_layer/user_factor_0/Cast'input_layer/user_factor_0/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
v
input_layer/user_factor_1/CastCastExpandDims_12*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
m
input_layer/user_factor_1/ShapeShapeinput_layer/user_factor_1/Cast*
T0*
_output_shapes
:
w
-input_layer/user_factor_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/input_layer/user_factor_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/input_layer/user_factor_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/user_factor_1/strided_sliceStridedSliceinput_layer/user_factor_1/Shape-input_layer/user_factor_1/strided_slice/stack/input_layer/user_factor_1/strided_slice/stack_1/input_layer/user_factor_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
k
)input_layer/user_factor_1/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
±
'input_layer/user_factor_1/Reshape/shapePack'input_layer/user_factor_1/strided_slice)input_layer/user_factor_1/Reshape/shape/1*
N*
_output_shapes
:*
T0
І
!input_layer/user_factor_1/ReshapeReshapeinput_layer/user_factor_1/Cast'input_layer/user_factor_1/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
v
input_layer/user_factor_2/CastCastExpandDims_13*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
m
input_layer/user_factor_2/ShapeShapeinput_layer/user_factor_2/Cast*
T0*
_output_shapes
:
w
-input_layer/user_factor_2/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/input_layer/user_factor_2/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/input_layer/user_factor_2/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/user_factor_2/strided_sliceStridedSliceinput_layer/user_factor_2/Shape-input_layer/user_factor_2/strided_slice/stack/input_layer/user_factor_2/strided_slice/stack_1/input_layer/user_factor_2/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
k
)input_layer/user_factor_2/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
±
'input_layer/user_factor_2/Reshape/shapePack'input_layer/user_factor_2/strided_slice)input_layer/user_factor_2/Reshape/shape/1*
T0*
N*
_output_shapes
:
І
!input_layer/user_factor_2/ReshapeReshapeinput_layer/user_factor_2/Cast'input_layer/user_factor_2/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
v
input_layer/user_factor_3/CastCastExpandDims_14*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
m
input_layer/user_factor_3/ShapeShapeinput_layer/user_factor_3/Cast*
_output_shapes
:*
T0
w
-input_layer/user_factor_3/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/input_layer/user_factor_3/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/input_layer/user_factor_3/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/user_factor_3/strided_sliceStridedSliceinput_layer/user_factor_3/Shape-input_layer/user_factor_3/strided_slice/stack/input_layer/user_factor_3/strided_slice/stack_1/input_layer/user_factor_3/strided_slice/stack_2*
T0*
Index0*
_output_shapes
: *
shrink_axis_mask
k
)input_layer/user_factor_3/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
±
'input_layer/user_factor_3/Reshape/shapePack'input_layer/user_factor_3/strided_slice)input_layer/user_factor_3/Reshape/shape/1*
T0*
N*
_output_shapes
:
І
!input_layer/user_factor_3/ReshapeReshapeinput_layer/user_factor_3/Cast'input_layer/user_factor_3/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
v
input_layer/user_factor_4/CastCastExpandDims_15*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
m
input_layer/user_factor_4/ShapeShapeinput_layer/user_factor_4/Cast*
_output_shapes
:*
T0
w
-input_layer/user_factor_4/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/input_layer/user_factor_4/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/input_layer/user_factor_4/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/user_factor_4/strided_sliceStridedSliceinput_layer/user_factor_4/Shape-input_layer/user_factor_4/strided_slice/stack/input_layer/user_factor_4/strided_slice/stack_1/input_layer/user_factor_4/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
k
)input_layer/user_factor_4/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
±
'input_layer/user_factor_4/Reshape/shapePack'input_layer/user_factor_4/strided_slice)input_layer/user_factor_4/Reshape/shape/1*
N*
_output_shapes
:*
T0
І
!input_layer/user_factor_4/ReshapeReshapeinput_layer/user_factor_4/Cast'input_layer/user_factor_4/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
v
input_layer/user_factor_5/CastCastExpandDims_16*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
m
input_layer/user_factor_5/ShapeShapeinput_layer/user_factor_5/Cast*
_output_shapes
:*
T0
w
-input_layer/user_factor_5/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/input_layer/user_factor_5/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/input_layer/user_factor_5/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/user_factor_5/strided_sliceStridedSliceinput_layer/user_factor_5/Shape-input_layer/user_factor_5/strided_slice/stack/input_layer/user_factor_5/strided_slice/stack_1/input_layer/user_factor_5/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
k
)input_layer/user_factor_5/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
±
'input_layer/user_factor_5/Reshape/shapePack'input_layer/user_factor_5/strided_slice)input_layer/user_factor_5/Reshape/shape/1*
_output_shapes
:*
T0*
N
І
!input_layer/user_factor_5/ReshapeReshapeinput_layer/user_factor_5/Cast'input_layer/user_factor_5/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
v
input_layer/user_factor_6/CastCastExpandDims_17*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
m
input_layer/user_factor_6/ShapeShapeinput_layer/user_factor_6/Cast*
T0*
_output_shapes
:
w
-input_layer/user_factor_6/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/input_layer/user_factor_6/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
y
/input_layer/user_factor_6/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/user_factor_6/strided_sliceStridedSliceinput_layer/user_factor_6/Shape-input_layer/user_factor_6/strided_slice/stack/input_layer/user_factor_6/strided_slice/stack_1/input_layer/user_factor_6/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
k
)input_layer/user_factor_6/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
±
'input_layer/user_factor_6/Reshape/shapePack'input_layer/user_factor_6/strided_slice)input_layer/user_factor_6/Reshape/shape/1*
N*
_output_shapes
:*
T0
І
!input_layer/user_factor_6/ReshapeReshapeinput_layer/user_factor_6/Cast'input_layer/user_factor_6/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
v
input_layer/user_factor_7/CastCastExpandDims_18*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
m
input_layer/user_factor_7/ShapeShapeinput_layer/user_factor_7/Cast*
T0*
_output_shapes
:
w
-input_layer/user_factor_7/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/input_layer/user_factor_7/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
y
/input_layer/user_factor_7/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ѓ
'input_layer/user_factor_7/strided_sliceStridedSliceinput_layer/user_factor_7/Shape-input_layer/user_factor_7/strided_slice/stack/input_layer/user_factor_7/strided_slice/stack_1/input_layer/user_factor_7/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
k
)input_layer/user_factor_7/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
±
'input_layer/user_factor_7/Reshape/shapePack'input_layer/user_factor_7/strided_slice)input_layer/user_factor_7/Reshape/shape/1*
N*
_output_shapes
:*
T0
І
!input_layer/user_factor_7/ReshapeReshapeinput_layer/user_factor_7/Cast'input_layer/user_factor_7/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
v
input_layer/user_factor_8/CastCastExpandDims_19*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
m
input_layer/user_factor_8/ShapeShapeinput_layer/user_factor_8/Cast*
_output_shapes
:*
T0
w
-input_layer/user_factor_8/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/input_layer/user_factor_8/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
y
/input_layer/user_factor_8/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ѓ
'input_layer/user_factor_8/strided_sliceStridedSliceinput_layer/user_factor_8/Shape-input_layer/user_factor_8/strided_slice/stack/input_layer/user_factor_8/strided_slice/stack_1/input_layer/user_factor_8/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
k
)input_layer/user_factor_8/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
±
'input_layer/user_factor_8/Reshape/shapePack'input_layer/user_factor_8/strided_slice)input_layer/user_factor_8/Reshape/shape/1*
T0*
N*
_output_shapes
:
І
!input_layer/user_factor_8/ReshapeReshapeinput_layer/user_factor_8/Cast'input_layer/user_factor_8/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
T0
v
input_layer/user_factor_9/CastCastExpandDims_20*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
m
input_layer/user_factor_9/ShapeShapeinput_layer/user_factor_9/Cast*
_output_shapes
:*
T0
w
-input_layer/user_factor_9/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
y
/input_layer/user_factor_9/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
y
/input_layer/user_factor_9/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ѓ
'input_layer/user_factor_9/strided_sliceStridedSliceinput_layer/user_factor_9/Shape-input_layer/user_factor_9/strided_slice/stack/input_layer/user_factor_9/strided_slice/stack_1/input_layer/user_factor_9/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
k
)input_layer/user_factor_9/Reshape/shape/1Const*
_output_shapes
: *
value	B :*
dtype0
±
'input_layer/user_factor_9/Reshape/shapePack'input_layer/user_factor_9/strided_slice)input_layer/user_factor_9/Reshape/shape/1*
T0*
N*
_output_shapes
:
І
!input_layer/user_factor_9/ReshapeReshapeinput_layer/user_factor_9/Cast'input_layer/user_factor_9/Reshape/shape*
T0*'
_output_shapes
:€€€€€€€€€
Y
input_layer/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
љ%
input_layer/concatConcatV22input_layer/calculated_host_listings_count/Reshape/input_layer/host_is_superhost_indicator/Reshape1input_layer/host_response_time_cross_rate/Reshape!input_layer/item_factor_0/Reshape!input_layer/item_factor_1/Reshape!input_layer/item_factor_2/Reshape!input_layer/item_factor_3/Reshape!input_layer/item_factor_4/Reshape!input_layer/item_factor_5/Reshape!input_layer/item_factor_6/Reshape!input_layer/item_factor_7/Reshape!input_layer/item_factor_8/Reshape!input_layer/item_factor_9/ReshapeJinput_layer/latitude_bucketized_X_longitude_bucketized_indicator/Reshape_4(input_layer/listing_id_embedding/Reshape'input_layer/nearby_sites_rating/Reshape(input_layer/nearest_station_dist/Reshape$input_layer/price_bucketized/Reshape!input_layer/text_factor_0/Reshape!input_layer/text_factor_1/Reshape"input_layer/text_factor_10/Reshape"input_layer/text_factor_11/Reshape"input_layer/text_factor_12/Reshape"input_layer/text_factor_13/Reshape"input_layer/text_factor_14/Reshape"input_layer/text_factor_15/Reshape"input_layer/text_factor_16/Reshape"input_layer/text_factor_17/Reshape"input_layer/text_factor_18/Reshape"input_layer/text_factor_19/Reshape!input_layer/text_factor_2/Reshape"input_layer/text_factor_20/Reshape"input_layer/text_factor_21/Reshape"input_layer/text_factor_22/Reshape"input_layer/text_factor_23/Reshape"input_layer/text_factor_24/Reshape"input_layer/text_factor_25/Reshape"input_layer/text_factor_26/Reshape"input_layer/text_factor_27/Reshape"input_layer/text_factor_28/Reshape"input_layer/text_factor_29/Reshape!input_layer/text_factor_3/Reshape"input_layer/text_factor_30/Reshape"input_layer/text_factor_31/Reshape"input_layer/text_factor_32/Reshape"input_layer/text_factor_33/Reshape"input_layer/text_factor_34/Reshape"input_layer/text_factor_35/Reshape"input_layer/text_factor_36/Reshape"input_layer/text_factor_37/Reshape"input_layer/text_factor_38/Reshape"input_layer/text_factor_39/Reshape!input_layer/text_factor_4/Reshape"input_layer/text_factor_40/Reshape"input_layer/text_factor_41/Reshape"input_layer/text_factor_42/Reshape"input_layer/text_factor_43/Reshape"input_layer/text_factor_44/Reshape"input_layer/text_factor_45/Reshape"input_layer/text_factor_46/Reshape"input_layer/text_factor_47/Reshape"input_layer/text_factor_48/Reshape"input_layer/text_factor_49/Reshape!input_layer/text_factor_5/Reshape"input_layer/text_factor_50/Reshape"input_layer/text_factor_51/Reshape"input_layer/text_factor_52/Reshape"input_layer/text_factor_53/Reshape"input_layer/text_factor_54/Reshape"input_layer/text_factor_55/Reshape"input_layer/text_factor_56/Reshape"input_layer/text_factor_57/Reshape"input_layer/text_factor_58/Reshape"input_layer/text_factor_59/Reshape!input_layer/text_factor_6/Reshape"input_layer/text_factor_60/Reshape"input_layer/text_factor_61/Reshape"input_layer/text_factor_62/Reshape"input_layer/text_factor_63/Reshape"input_layer/text_factor_64/Reshape"input_layer/text_factor_65/Reshape"input_layer/text_factor_66/Reshape"input_layer/text_factor_67/Reshape"input_layer/text_factor_68/Reshape"input_layer/text_factor_69/Reshape!input_layer/text_factor_7/Reshape"input_layer/text_factor_70/Reshape"input_layer/text_factor_71/Reshape"input_layer/text_factor_72/Reshape"input_layer/text_factor_73/Reshape"input_layer/text_factor_74/Reshape"input_layer/text_factor_75/Reshape"input_layer/text_factor_76/Reshape"input_layer/text_factor_77/Reshape"input_layer/text_factor_78/Reshape"input_layer/text_factor_79/Reshape!input_layer/text_factor_8/Reshape"input_layer/text_factor_80/Reshape"input_layer/text_factor_81/Reshape"input_layer/text_factor_82/Reshape"input_layer/text_factor_83/Reshape"input_layer/text_factor_84/Reshape"input_layer/text_factor_85/Reshape"input_layer/text_factor_86/Reshape"input_layer/text_factor_87/Reshape"input_layer/text_factor_88/Reshape"input_layer/text_factor_89/Reshape!input_layer/text_factor_9/Reshape"input_layer/text_factor_90/Reshape"input_layer/text_factor_91/Reshape"input_layer/text_factor_92/Reshape"input_layer/text_factor_93/Reshape"input_layer/text_factor_94/Reshape"input_layer/text_factor_95/Reshape"input_layer/text_factor_96/Reshape"input_layer/text_factor_97/Reshape"input_layer/text_factor_98/Reshape"input_layer/text_factor_99/Reshape!input_layer/user_factor_0/Reshape!input_layer/user_factor_1/Reshape!input_layer/user_factor_2/Reshape!input_layer/user_factor_3/Reshape!input_layer/user_factor_4/Reshape!input_layer/user_factor_5/Reshape!input_layer/user_factor_6/Reshape!input_layer/user_factor_7/Reshape!input_layer/user_factor_8/Reshape!input_layer/user_factor_9/Reshapeinput_layer/concat/axis*
T0*
NА*(
_output_shapes
:€€€€€€€€€њ
Q
dropout/rateConst*
valueB
 *  А>*
dtype0*
_output_shapes
: 
O
dropout/ShapeShapeinput_layer/concat*
T0*
_output_shapes
:
_
dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
dropout/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
†
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape*
seed±€е)*
T0*
dtype0*(
_output_shapes
:€€€€€€€€€њ*
seed2
z
dropout/random_uniform/subSubdropout/random_uniform/maxdropout/random_uniform/min*
T0*
_output_shapes
: 
Ц
dropout/random_uniform/mulMul$dropout/random_uniform/RandomUniformdropout/random_uniform/sub*(
_output_shapes
:€€€€€€€€€њ*
T0
И
dropout/random_uniformAdddropout/random_uniform/muldropout/random_uniform/min*
T0*(
_output_shapes
:€€€€€€€€€њ
R
dropout/sub/xConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
P
dropout/subSubdropout/sub/xdropout/rate*
T0*
_output_shapes
: 
V
dropout/truediv/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
[
dropout/truedivRealDivdropout/truediv/xdropout/sub*
_output_shapes
: *
T0
}
dropout/GreaterEqualGreaterEqualdropout/random_uniformdropout/rate*
T0*(
_output_shapes
:€€€€€€€€€њ
j
dropout/mulMulinput_layer/concatdropout/truediv*
T0*(
_output_shapes
:€€€€€€€€€њ
l
dropout/CastCastdropout/GreaterEqual*(
_output_shapes
:€€€€€€€€€њ*

DstT0*

SrcT0

b
dropout/mul_1Muldropout/muldropout/Cast*
T0*(
_output_shapes
:€€€€€€€€€њ
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"њ      *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:
С
+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *`Fнљ*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
С
+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *`Fн=*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
ќ
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@dense/kernel*
dtype0* 
_output_shapes
:
њА
ќ
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
_output_shapes
: *
T0
в
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
њА*
T0*
_class
loc:@dense/kernel
‘
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel* 
_output_shapes
:
њА*
T0
Б
dense/kernel
VariableV2*
dtype0* 
_output_shapes
:
њА*
shape:
њА*
_class
loc:@dense/kernel
†
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
њА
w
dense/kernel/readIdentitydense/kernel* 
_output_shapes
:
њА*
T0*
_class
loc:@dense/kernel
К
dense/bias/Initializer/zerosConst*
valueBА*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes	
:А
s

dense/bias
VariableV2*
shape:А*
_class
loc:@dense/bias*
dtype0*
_output_shapes	
:А
К
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
l
dense/bias/readIdentity
dense/bias*
_output_shapes	
:А*
T0*
_class
loc:@dense/bias
k
dense/MatMulMatMuldropout/mul_1dense/kernel/read*
T0*(
_output_shapes
:€€€€€€€€€А
j
dense/BiasAddBiasAdddense/MatMuldense/bias/read*(
_output_shapes
:€€€€€€€€€А*
T0
T

dense/ReluReludense/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
S
dropout_1/rateConst*
valueB
 *  А>*
dtype0*
_output_shapes
: 
I
dropout_1/ShapeShape
dense/Relu*
_output_shapes
:*
T0
a
dropout_1/random_uniform/minConst*
_output_shapes
: *
valueB
 *    *
dtype0
a
dropout_1/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
§
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape*
dtype0*(
_output_shapes
:€€€€€€€€€А*
seed2*
seed±€е)*
T0
А
dropout_1/random_uniform/subSubdropout_1/random_uniform/maxdropout_1/random_uniform/min*
_output_shapes
: *
T0
Ь
dropout_1/random_uniform/mulMul&dropout_1/random_uniform/RandomUniformdropout_1/random_uniform/sub*(
_output_shapes
:€€€€€€€€€А*
T0
О
dropout_1/random_uniformAdddropout_1/random_uniform/muldropout_1/random_uniform/min*
T0*(
_output_shapes
:€€€€€€€€€А
T
dropout_1/sub/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
V
dropout_1/subSubdropout_1/sub/xdropout_1/rate*
T0*
_output_shapes
: 
X
dropout_1/truediv/xConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
a
dropout_1/truedivRealDivdropout_1/truediv/xdropout_1/sub*
_output_shapes
: *
T0
Г
dropout_1/GreaterEqualGreaterEqualdropout_1/random_uniformdropout_1/rate*
T0*(
_output_shapes
:€€€€€€€€€А
f
dropout_1/mulMul
dense/Reludropout_1/truediv*
T0*(
_output_shapes
:€€€€€€€€€А
p
dropout_1/CastCastdropout_1/GreaterEqual*(
_output_shapes
:€€€€€€€€€А*

DstT0*

SrcT0

h
dropout_1/mul_1Muldropout_1/muldropout_1/Cast*
T0*(
_output_shapes
:€€€€€€€€€А
£
/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"   А   *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:
Х
-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *   Њ*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
Х
-dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *   >*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
‘
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_1/kernel*
dtype0* 
_output_shapes
:
АА
÷
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_1/kernel*
_output_shapes
: *
T0
к
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
АА*
T0*!
_class
loc:@dense_1/kernel
№
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
АА
Е
dense_1/kernel
VariableV2* 
_output_shapes
:
АА*
shape:
АА*!
_class
loc:@dense_1/kernel*
dtype0
®
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
АА
}
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
АА
О
dense_1/bias/Initializer/zerosConst*
valueBА*    *
_class
loc:@dense_1/bias*
dtype0*
_output_shapes	
:А
w
dense_1/bias
VariableV2*
dtype0*
_output_shapes	
:А*
shape:А*
_class
loc:@dense_1/bias
Т
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:А
r
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:А
q
dense_1/MatMulMatMuldropout_1/mul_1dense_1/kernel/read*(
_output_shapes
:€€€€€€€€€А*
T0
p
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*(
_output_shapes
:€€€€€€€€€А*
T0
X
dense_1/ReluReludense_1/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
S
dropout_2/rateConst*
valueB
 *  А>*
dtype0*
_output_shapes
: 
K
dropout_2/ShapeShapedense_1/Relu*
T0*
_output_shapes
:
a
dropout_2/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
a
dropout_2/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
§
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape*
seed±€е)*
T0*
dtype0*(
_output_shapes
:€€€€€€€€€А*
seed2
А
dropout_2/random_uniform/subSubdropout_2/random_uniform/maxdropout_2/random_uniform/min*
T0*
_output_shapes
: 
Ь
dropout_2/random_uniform/mulMul&dropout_2/random_uniform/RandomUniformdropout_2/random_uniform/sub*
T0*(
_output_shapes
:€€€€€€€€€А
О
dropout_2/random_uniformAdddropout_2/random_uniform/muldropout_2/random_uniform/min*(
_output_shapes
:€€€€€€€€€А*
T0
T
dropout_2/sub/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
V
dropout_2/subSubdropout_2/sub/xdropout_2/rate*
T0*
_output_shapes
: 
X
dropout_2/truediv/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
a
dropout_2/truedivRealDivdropout_2/truediv/xdropout_2/sub*
_output_shapes
: *
T0
Г
dropout_2/GreaterEqualGreaterEqualdropout_2/random_uniformdropout_2/rate*
T0*(
_output_shapes
:€€€€€€€€€А
h
dropout_2/mulMuldense_1/Reludropout_2/truediv*
T0*(
_output_shapes
:€€€€€€€€€А
p
dropout_2/CastCastdropout_2/GreaterEqual*

SrcT0
*(
_output_shapes
:€€€€€€€€€А*

DstT0
h
dropout_2/mul_1Muldropout_2/muldropout_2/Cast*
T0*(
_output_shapes
:€€€€€€€€€А
£
/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"А   @   *!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
:
Х
-dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *у5Њ*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
Х
-dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *у5>*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
”
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*
_output_shapes
:	А@*
T0*!
_class
loc:@dense_2/kernel*
dtype0
÷
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
й
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	А@
џ
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	А@
Г
dense_2/kernel
VariableV2*
shape:	А@*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
:	А@
І
dense_2/kernel/AssignAssigndense_2/kernel)dense_2/kernel/Initializer/random_uniform*
_output_shapes
:	А@*
T0*!
_class
loc:@dense_2/kernel
|
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	А@
М
dense_2/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    *
_class
loc:@dense_2/bias
u
dense_2/bias
VariableV2*
_output_shapes
:@*
shape:@*
_class
loc:@dense_2/bias*
dtype0
С
dense_2/bias/AssignAssigndense_2/biasdense_2/bias/Initializer/zeros*
_output_shapes
:@*
T0*
_class
loc:@dense_2/bias
q
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:@
p
dense_2/MatMulMatMuldropout_2/mul_1dense_2/kernel/read*'
_output_shapes
:€€€€€€€€€@*
T0
o
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*'
_output_shapes
:€€€€€€€€€@*
T0
W
dense_2/ReluReludense_2/BiasAdd*'
_output_shapes
:€€€€€€€€€@*
T0
£
/dense_3/kernel/Initializer/random_uniform/shapeConst*
valueB"@      *!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
:
Х
-dense_3/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ИОЫЊ*!
_class
loc:@dense_3/kernel
Х
-dense_3/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ИОЫ>*!
_class
loc:@dense_3/kernel
“
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape*
_output_shapes

:@*
T0*!
_class
loc:@dense_3/kernel*
dtype0
÷
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 
и
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes

:@
Џ
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes

:@
Б
dense_3/kernel
VariableV2*
_output_shapes

:@*
shape
:@*!
_class
loc:@dense_3/kernel*
dtype0
¶
dense_3/kernel/AssignAssigndense_3/kernel)dense_3/kernel/Initializer/random_uniform*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes

:@
{
dense_3/kernel/readIdentitydense_3/kernel*
_output_shapes

:@*
T0*!
_class
loc:@dense_3/kernel
М
dense_3/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
:
u
dense_3/bias
VariableV2*
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
:*
shape:
С
dense_3/bias/AssignAssigndense_3/biasdense_3/bias/Initializer/zeros*
T0*
_class
loc:@dense_3/bias*
_output_shapes
:
q
dense_3/bias/readIdentitydense_3/bias*
T0*
_class
loc:@dense_3/bias*
_output_shapes
:
m
dense_3/MatMulMatMuldense_2/Reludense_3/kernel/read*'
_output_shapes
:€€€€€€€€€*
T0
o
dense_3/BiasAddBiasAdddense_3/MatMuldense_3/bias/read*'
_output_shapes
:€€€€€€€€€*
T0
]
dense_3/SigmoidSigmoiddense_3/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€
]
ExpandDims_131/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
w
ExpandDims_131
ExpandDimsdense_3/SigmoidExpandDims_131/dim*
T0*+
_output_shapes
:€€€€€€€€€

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
Д
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_c0c657458ab641bc8bed788867d7dc46/part*
dtype0*
_output_shapes
: 
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
N
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
М
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
¶
save/SaveV2/tensor_namesConst"/device:CPU:0* 
valueјBљ
B
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBdense_3/biasBdense_3/kernelBglobal_stepB2input_layer/listing_id_embedding/embedding_weights*
dtype0*
_output_shapes
:

Ж
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:
*'
valueB
B B B B B B B B B B 
Ѕ
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices
dense/biasdense/kerneldense_1/biasdense_1/kerneldense_2/biasdense_2/kerneldense_3/biasdense_3/kernelglobal_step2input_layer/listing_id_embedding/embedding_weights"/device:CPU:0*
dtypes
2
	
†
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
†
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
_output_shapes
:*
T0*
N
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
Й
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
©
save/RestoreV2/tensor_namesConst"/device:CPU:0* 
valueјBљ
B
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBdense_3/biasBdense_3/kernelBglobal_stepB2input_layer/listing_id_embedding/embedding_weights*
dtype0*
_output_shapes
:

Й
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*'
valueB
B B B B B B B B B B *
dtype0*
_output_shapes
:

ћ
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*<
_output_shapes*
(::::::::::*
dtypes
2
	
v
save/AssignAssign
dense/biassave/RestoreV2*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
Г
save/Assign_1Assigndense/kernelsave/RestoreV2:1*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
њА
~
save/Assign_2Assigndense_1/biassave/RestoreV2:2*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:А
З
save/Assign_3Assigndense_1/kernelsave/RestoreV2:3*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
АА
}
save/Assign_4Assigndense_2/biassave/RestoreV2:4*
_class
loc:@dense_2/bias*
_output_shapes
:@*
T0
Ж
save/Assign_5Assigndense_2/kernelsave/RestoreV2:5*!
_class
loc:@dense_2/kernel*
_output_shapes
:	А@*
T0
}
save/Assign_6Assigndense_3/biassave/RestoreV2:6*
T0*
_class
loc:@dense_3/bias*
_output_shapes
:
Е
save/Assign_7Assigndense_3/kernelsave/RestoreV2:7*
_output_shapes

:@*
T0*!
_class
loc:@dense_3/kernel
w
save/Assign_8Assignglobal_stepsave/RestoreV2:8*
T0	*
_class
loc:@global_step*
_output_shapes
: 
ќ
save/Assign_9Assign2input_layer/listing_id_embedding/embedding_weightssave/RestoreV2:9*
T0*E
_class;
97loc:@input_layer/listing_id_embedding/embedding_weights*
_output_shapes
:	ё62
Є
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard"Ж<
save/Const:0save/Identity:0save/restore_all (5 @F8"•	
	variablesЧ	Ф	
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H
Б
4input_layer/listing_id_embedding/embedding_weights:09input_layer/listing_id_embedding/embedding_weights/Assign9input_layer/listing_id_embedding/embedding_weights/read:02Qinput_layer/listing_id_embedding/embedding_weights/Initializer/truncated_normal:08
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:08
V
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:08
o
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:08
^
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:08
o
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02+dense_2/kernel/Initializer/random_uniform:08
^
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02 dense_2/bias/Initializer/zeros:08
o
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:02+dense_3/kernel/Initializer/random_uniform:08
^
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:02 dense_3/bias/Initializer/zeros:08"m
global_step^\
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H"ј(
cond_contextѓ(ђ(
≠
ainput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/cond_textainput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/pred_id:0binput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/switch_t:0 *ю
linput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/control_dependency:0
ainput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/pred_id:0
binput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/switch_t:0∆
ainput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/pred_id:0ainput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/pred_id:0
©
cinput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/cond_text_1ainput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/pred_id:0binput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/switch_f:0*ъ
Jinput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/All:0
ginput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/Assert/Switch:0
iinput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/Assert/Switch_1:0
iinput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/Assert/Switch_2:0
ginput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/Assert/data_0:0
ninput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/control_dependency_1:0
ainput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/pred_id:0
binput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/switch_f:0
5input_layer/host_is_superhost_indicator/num_buckets:0
@input_layer/host_is_superhost_indicator/to_sparse_input/values:0µ
Jinput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/All:0ginput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/Assert/Switch:0Ґ
5input_layer/host_is_superhost_indicator/num_buckets:0iinput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/Assert/Switch_2:0≠
@input_layer/host_is_superhost_indicator/to_sparse_input/values:0iinput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/Assert/Switch_1:0∆
ainput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/pred_id:0ainput_layer/host_is_superhost_indicator/assert_less_than_num_buckets/Assert/AssertGuard/pred_id:0
Х
^input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/cond_text^input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/pred_id:0_input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/switch_t:0 *п
iinput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/control_dependency:0
^input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/pred_id:0
_input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/switch_t:0ј
^input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/pred_id:0^input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/pred_id:0
µ
`input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/cond_text_1^input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/pred_id:0_input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/switch_f:0*П

Ginput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/All:0
dinput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/Assert/Switch:0
finput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/Assert/Switch_1:0
dinput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/Assert/data_0:0
kinput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/control_dependency_1:0
^input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/pred_id:0
_input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/switch_f:0
@input_layer/host_is_superhost_indicator/to_sparse_input/values:0ј
^input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/pred_id:0^input_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/pred_id:0ѓ
Ginput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/All:0dinput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/Assert/Switch:0™
@input_layer/host_is_superhost_indicator/to_sparse_input/values:0finput_layer/host_is_superhost_indicator/assert_greater_or_equal_0/Assert/AssertGuard/Assert/Switch_1:0"%
saved_model_main_op


group_deps"Ы
model_variablesЗД
Б
4input_layer/listing_id_embedding/embedding_weights:09input_layer/listing_id_embedding/embedding_weights/Assign9input_layer/listing_id_embedding/embedding_weights/read:02Qinput_layer/listing_id_embedding/embedding_weights/Initializer/truncated_normal:08"”
trainable_variablesїЄ
Б
4input_layer/listing_id_embedding/embedding_weights:09input_layer/listing_id_embedding/embedding_weights/Assign9input_layer/listing_id_embedding/embedding_weights/read:02Qinput_layer/listing_id_embedding/embedding_weights/Initializer/truncated_normal:08
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:08
V
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:08
o
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:08
^
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:08
o
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02+dense_2/kernel/Initializer/random_uniform:08
^
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02 dense_2/bias/Initializer/zeros:08
o
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:02+dense_3/kernel/Initializer/random_uniform:08
^
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:02 dense_3/bias/Initializer/zeros:08*Э9
serving_defaultЙ9
6
text_factor_78$
Placeholder_109:0€€€€€€€€€
6
text_factor_83$
Placeholder_114:0€€€€€€€€€
6
text_factor_79$
Placeholder_110:0€€€€€€€€€
6
text_factor_84$
Placeholder_115:0€€€€€€€€€
6
text_factor_85$
Placeholder_116:0€€€€€€€€€
6
text_factor_90$
Placeholder_121:0€€€€€€€€€
6
text_factor_86$
Placeholder_117:0€€€€€€€€€
6
text_factor_91$
Placeholder_122:0€€€€€€€€€
6
text_factor_87$
Placeholder_118:0€€€€€€€€€
6
text_factor_92$
Placeholder_123:0€€€€€€€€€
6
text_factor_93$
Placeholder_124:0€€€€€€€€€
6
text_factor_88$
Placeholder_119:0€€€€€€€€€
6
text_factor_94$
Placeholder_125:0€€€€€€€€€
6
text_factor_89$
Placeholder_120:0€€€€€€€€€
6
text_factor_95$
Placeholder_126:0€€€€€€€€€
6
text_factor_96$
Placeholder_127:0€€€€€€€€€
6
text_factor_97$
Placeholder_128:0€€€€€€€€€
6
text_factor_98$
Placeholder_129:0€€€€€€€€€
6
text_factor_99$
Placeholder_130:0€€€€€€€€€
8
host_is_superhost#
Placeholder_10:0	€€€€€€€€€
D
calculated_host_listings_count"
Placeholder_4:0€€€€€€€€€
9
nearby_sites_rating"
Placeholder_5:0€€€€€€€€€
,
latitude 
Placeholder:0€€€€€€€€€
4
text_factor_0#
Placeholder_31:0€€€€€€€€€
4
text_factor_1#
Placeholder_32:0€€€€€€€€€
4
text_factor_2#
Placeholder_33:0€€€€€€€€€
4
text_factor_3#
Placeholder_34:0€€€€€€€€€
4
text_factor_4#
Placeholder_35:0€€€€€€€€€
4
text_factor_5#
Placeholder_36:0€€€€€€€€€
4
text_factor_6#
Placeholder_37:0€€€€€€€€€
4
text_factor_7#
Placeholder_38:0€€€€€€€€€
4
text_factor_8#
Placeholder_39:0€€€€€€€€€
4
text_factor_9#
Placeholder_40:0€€€€€€€€€
0

preference"
Placeholder_8:0€€€€€€€€€
/
	longitude"
Placeholder_1:0€€€€€€€€€
4
user_factor_0#
Placeholder_11:0€€€€€€€€€
4
user_factor_1#
Placeholder_12:0€€€€€€€€€
4
user_factor_2#
Placeholder_13:0€€€€€€€€€
4
user_factor_3#
Placeholder_14:0€€€€€€€€€
4
user_factor_4#
Placeholder_15:0€€€€€€€€€
4
user_factor_5#
Placeholder_16:0€€€€€€€€€
4
user_factor_6#
Placeholder_17:0€€€€€€€€€
4
user_factor_7#
Placeholder_18:0€€€€€€€€€
4
user_factor_8#
Placeholder_19:0€€€€€€€€€
4
user_factor_9#
Placeholder_20:0€€€€€€€€€
:
nearest_station_dist"
Placeholder_6:0€€€€€€€€€
0

listing_id"
Placeholder_9:0€€€€€€€€€
;
number_of_reviews_ltm"
Placeholder_3:0€€€€€€€€€
4
item_factor_0#
Placeholder_21:0€€€€€€€€€
4
item_factor_1#
Placeholder_22:0€€€€€€€€€
4
item_factor_2#
Placeholder_23:0€€€€€€€€€
4
item_factor_3#
Placeholder_24:0€€€€€€€€€
4
item_factor_4#
Placeholder_25:0€€€€€€€€€
4
item_factor_5#
Placeholder_26:0€€€€€€€€€
4
item_factor_6#
Placeholder_27:0€€€€€€€€€
4
item_factor_7#
Placeholder_28:0€€€€€€€€€
4
item_factor_8#
Placeholder_29:0€€€€€€€€€
4
item_factor_9#
Placeholder_30:0€€€€€€€€€
5
text_factor_10#
Placeholder_41:0€€€€€€€€€
5
text_factor_11#
Placeholder_42:0€€€€€€€€€
5
text_factor_12#
Placeholder_43:0€€€€€€€€€
5
text_factor_13#
Placeholder_44:0€€€€€€€€€
5
text_factor_14#
Placeholder_45:0€€€€€€€€€
5
text_factor_15#
Placeholder_46:0€€€€€€€€€
5
text_factor_20#
Placeholder_51:0€€€€€€€€€
5
text_factor_21#
Placeholder_52:0€€€€€€€€€
5
text_factor_16#
Placeholder_47:0€€€€€€€€€
5
text_factor_22#
Placeholder_53:0€€€€€€€€€
5
text_factor_17#
Placeholder_48:0€€€€€€€€€
+
price"
Placeholder_2:0€€€€€€€€€
5
text_factor_18#
Placeholder_49:0€€€€€€€€€
5
text_factor_23#
Placeholder_54:0€€€€€€€€€
5
text_factor_19#
Placeholder_50:0€€€€€€€€€
5
text_factor_24#
Placeholder_55:0€€€€€€€€€
5
text_factor_25#
Placeholder_56:0€€€€€€€€€
5
text_factor_30#
Placeholder_61:0€€€€€€€€€
5
text_factor_31#
Placeholder_62:0€€€€€€€€€
5
text_factor_26#
Placeholder_57:0€€€€€€€€€
5
text_factor_32#
Placeholder_63:0€€€€€€€€€
5
text_factor_27#
Placeholder_58:0€€€€€€€€€
5
text_factor_33#
Placeholder_64:0€€€€€€€€€
5
text_factor_28#
Placeholder_59:0€€€€€€€€€
5
text_factor_34#
Placeholder_65:0€€€€€€€€€
5
text_factor_29#
Placeholder_60:0€€€€€€€€€
5
text_factor_40#
Placeholder_71:0€€€€€€€€€
5
text_factor_35#
Placeholder_66:0€€€€€€€€€
C
host_response_time_cross_rate"
Placeholder_7:0€€€€€€€€€
5
text_factor_36#
Placeholder_67:0€€€€€€€€€
5
text_factor_41#
Placeholder_72:0€€€€€€€€€
5
text_factor_37#
Placeholder_68:0€€€€€€€€€
5
text_factor_42#
Placeholder_73:0€€€€€€€€€
5
text_factor_38#
Placeholder_69:0€€€€€€€€€
5
text_factor_43#
Placeholder_74:0€€€€€€€€€
5
text_factor_39#
Placeholder_70:0€€€€€€€€€
5
text_factor_44#
Placeholder_75:0€€€€€€€€€
5
text_factor_50#
Placeholder_81:0€€€€€€€€€
5
text_factor_45#
Placeholder_76:0€€€€€€€€€
5
text_factor_51#
Placeholder_82:0€€€€€€€€€
5
text_factor_46#
Placeholder_77:0€€€€€€€€€
5
text_factor_47#
Placeholder_78:0€€€€€€€€€
5
text_factor_52#
Placeholder_83:0€€€€€€€€€
5
text_factor_48#
Placeholder_79:0€€€€€€€€€
5
text_factor_53#
Placeholder_84:0€€€€€€€€€
5
text_factor_49#
Placeholder_80:0€€€€€€€€€
5
text_factor_54#
Placeholder_85:0€€€€€€€€€
5
text_factor_60#
Placeholder_91:0€€€€€€€€€
5
text_factor_55#
Placeholder_86:0€€€€€€€€€
5
text_factor_61#
Placeholder_92:0€€€€€€€€€
5
text_factor_56#
Placeholder_87:0€€€€€€€€€
5
text_factor_62#
Placeholder_93:0€€€€€€€€€
5
text_factor_57#
Placeholder_88:0€€€€€€€€€
5
text_factor_58#
Placeholder_89:0€€€€€€€€€
5
text_factor_63#
Placeholder_94:0€€€€€€€€€
5
text_factor_64#
Placeholder_95:0€€€€€€€€€
5
text_factor_59#
Placeholder_90:0€€€€€€€€€
6
text_factor_70$
Placeholder_101:0€€€€€€€€€
5
text_factor_65#
Placeholder_96:0€€€€€€€€€
5
text_factor_66#
Placeholder_97:0€€€€€€€€€
6
text_factor_71$
Placeholder_102:0€€€€€€€€€
5
text_factor_67#
Placeholder_98:0€€€€€€€€€
6
text_factor_72$
Placeholder_103:0€€€€€€€€€
5
text_factor_68#
Placeholder_99:0€€€€€€€€€
6
text_factor_73$
Placeholder_104:0€€€€€€€€€
6
text_factor_69$
Placeholder_100:0€€€€€€€€€
6
text_factor_74$
Placeholder_105:0€€€€€€€€€
6
text_factor_75$
Placeholder_106:0€€€€€€€€€
6
text_factor_80$
Placeholder_111:0€€€€€€€€€
6
text_factor_76$
Placeholder_107:0€€€€€€€€€
6
text_factor_81$
Placeholder_112:0€€€€€€€€€
6
text_factor_77$
Placeholder_108:0€€€€€€€€€
6
text_factor_82$
Placeholder_113:0€€€€€€€€€9

preference+
ExpandDims_131:0€€€€€€€€€tensorflow/serving/predict*§9
predict_export_outputsЙ9
4
text_factor_8#
Placeholder_39:0€€€€€€€€€
4
text_factor_9#
Placeholder_40:0€€€€€€€€€
0

preference"
Placeholder_8:0€€€€€€€€€
/
	longitude"
Placeholder_1:0€€€€€€€€€
4
user_factor_0#
Placeholder_11:0€€€€€€€€€
4
user_factor_1#
Placeholder_12:0€€€€€€€€€
4
user_factor_2#
Placeholder_13:0€€€€€€€€€
4
user_factor_3#
Placeholder_14:0€€€€€€€€€
4
user_factor_4#
Placeholder_15:0€€€€€€€€€
4
user_factor_5#
Placeholder_16:0€€€€€€€€€
4
user_factor_6#
Placeholder_17:0€€€€€€€€€
4
user_factor_7#
Placeholder_18:0€€€€€€€€€
4
user_factor_8#
Placeholder_19:0€€€€€€€€€
4
user_factor_9#
Placeholder_20:0€€€€€€€€€
:
nearest_station_dist"
Placeholder_6:0€€€€€€€€€
0

listing_id"
Placeholder_9:0€€€€€€€€€
;
number_of_reviews_ltm"
Placeholder_3:0€€€€€€€€€
4
item_factor_0#
Placeholder_21:0€€€€€€€€€
4
item_factor_1#
Placeholder_22:0€€€€€€€€€
4
item_factor_2#
Placeholder_23:0€€€€€€€€€
4
item_factor_3#
Placeholder_24:0€€€€€€€€€
4
item_factor_4#
Placeholder_25:0€€€€€€€€€
4
item_factor_5#
Placeholder_26:0€€€€€€€€€
4
item_factor_6#
Placeholder_27:0€€€€€€€€€
4
item_factor_7#
Placeholder_28:0€€€€€€€€€
4
item_factor_8#
Placeholder_29:0€€€€€€€€€
4
item_factor_9#
Placeholder_30:0€€€€€€€€€
5
text_factor_10#
Placeholder_41:0€€€€€€€€€
5
text_factor_11#
Placeholder_42:0€€€€€€€€€
5
text_factor_12#
Placeholder_43:0€€€€€€€€€
5
text_factor_13#
Placeholder_44:0€€€€€€€€€
5
text_factor_14#
Placeholder_45:0€€€€€€€€€
5
text_factor_15#
Placeholder_46:0€€€€€€€€€
5
text_factor_20#
Placeholder_51:0€€€€€€€€€
5
text_factor_16#
Placeholder_47:0€€€€€€€€€
5
text_factor_21#
Placeholder_52:0€€€€€€€€€
5
text_factor_17#
Placeholder_48:0€€€€€€€€€
5
text_factor_22#
Placeholder_53:0€€€€€€€€€
5
text_factor_23#
Placeholder_54:0€€€€€€€€€
5
text_factor_18#
Placeholder_49:0€€€€€€€€€
+
price"
Placeholder_2:0€€€€€€€€€
5
text_factor_24#
Placeholder_55:0€€€€€€€€€
5
text_factor_19#
Placeholder_50:0€€€€€€€€€
5
text_factor_30#
Placeholder_61:0€€€€€€€€€
5
text_factor_25#
Placeholder_56:0€€€€€€€€€
5
text_factor_31#
Placeholder_62:0€€€€€€€€€
5
text_factor_26#
Placeholder_57:0€€€€€€€€€
5
text_factor_32#
Placeholder_63:0€€€€€€€€€
5
text_factor_27#
Placeholder_58:0€€€€€€€€€
5
text_factor_28#
Placeholder_59:0€€€€€€€€€
5
text_factor_33#
Placeholder_64:0€€€€€€€€€
5
text_factor_29#
Placeholder_60:0€€€€€€€€€
5
text_factor_34#
Placeholder_65:0€€€€€€€€€
5
text_factor_40#
Placeholder_71:0€€€€€€€€€
5
text_factor_35#
Placeholder_66:0€€€€€€€€€
C
host_response_time_cross_rate"
Placeholder_7:0€€€€€€€€€
5
text_factor_41#
Placeholder_72:0€€€€€€€€€
5
text_factor_36#
Placeholder_67:0€€€€€€€€€
5
text_factor_42#
Placeholder_73:0€€€€€€€€€
5
text_factor_37#
Placeholder_68:0€€€€€€€€€
5
text_factor_38#
Placeholder_69:0€€€€€€€€€
5
text_factor_43#
Placeholder_74:0€€€€€€€€€
5
text_factor_39#
Placeholder_70:0€€€€€€€€€
5
text_factor_44#
Placeholder_75:0€€€€€€€€€
5
text_factor_45#
Placeholder_76:0€€€€€€€€€
5
text_factor_50#
Placeholder_81:0€€€€€€€€€
5
text_factor_46#
Placeholder_77:0€€€€€€€€€
5
text_factor_51#
Placeholder_82:0€€€€€€€€€
5
text_factor_47#
Placeholder_78:0€€€€€€€€€
5
text_factor_52#
Placeholder_83:0€€€€€€€€€
5
text_factor_48#
Placeholder_79:0€€€€€€€€€
5
text_factor_53#
Placeholder_84:0€€€€€€€€€
5
text_factor_54#
Placeholder_85:0€€€€€€€€€
5
text_factor_49#
Placeholder_80:0€€€€€€€€€
5
text_factor_60#
Placeholder_91:0€€€€€€€€€
5
text_factor_55#
Placeholder_86:0€€€€€€€€€
5
text_factor_61#
Placeholder_92:0€€€€€€€€€
5
text_factor_56#
Placeholder_87:0€€€€€€€€€
5
text_factor_62#
Placeholder_93:0€€€€€€€€€
5
text_factor_57#
Placeholder_88:0€€€€€€€€€
5
text_factor_63#
Placeholder_94:0€€€€€€€€€
5
text_factor_58#
Placeholder_89:0€€€€€€€€€
5
text_factor_59#
Placeholder_90:0€€€€€€€€€
5
text_factor_64#
Placeholder_95:0€€€€€€€€€
5
text_factor_65#
Placeholder_96:0€€€€€€€€€
6
text_factor_70$
Placeholder_101:0€€€€€€€€€
6
text_factor_71$
Placeholder_102:0€€€€€€€€€
5
text_factor_66#
Placeholder_97:0€€€€€€€€€
6
text_factor_72$
Placeholder_103:0€€€€€€€€€
5
text_factor_67#
Placeholder_98:0€€€€€€€€€
6
text_factor_73$
Placeholder_104:0€€€€€€€€€
5
text_factor_68#
Placeholder_99:0€€€€€€€€€
6
text_factor_74$
Placeholder_105:0€€€€€€€€€
6
text_factor_69$
Placeholder_100:0€€€€€€€€€
6
text_factor_80$
Placeholder_111:0€€€€€€€€€
6
text_factor_75$
Placeholder_106:0€€€€€€€€€
6
text_factor_76$
Placeholder_107:0€€€€€€€€€
6
text_factor_81$
Placeholder_112:0€€€€€€€€€
6
text_factor_77$
Placeholder_108:0€€€€€€€€€
6
text_factor_82$
Placeholder_113:0€€€€€€€€€
6
text_factor_78$
Placeholder_109:0€€€€€€€€€
6
text_factor_83$
Placeholder_114:0€€€€€€€€€
6
text_factor_79$
Placeholder_110:0€€€€€€€€€
6
text_factor_84$
Placeholder_115:0€€€€€€€€€
6
text_factor_85$
Placeholder_116:0€€€€€€€€€
6
text_factor_90$
Placeholder_121:0€€€€€€€€€
6
text_factor_86$
Placeholder_117:0€€€€€€€€€
6
text_factor_91$
Placeholder_122:0€€€€€€€€€
6
text_factor_87$
Placeholder_118:0€€€€€€€€€
6
text_factor_92$
Placeholder_123:0€€€€€€€€€
6
text_factor_88$
Placeholder_119:0€€€€€€€€€
6
text_factor_93$
Placeholder_124:0€€€€€€€€€
6
text_factor_89$
Placeholder_120:0€€€€€€€€€
6
text_factor_94$
Placeholder_125:0€€€€€€€€€
6
text_factor_95$
Placeholder_126:0€€€€€€€€€
6
text_factor_96$
Placeholder_127:0€€€€€€€€€
6
text_factor_97$
Placeholder_128:0€€€€€€€€€
6
text_factor_98$
Placeholder_129:0€€€€€€€€€
6
text_factor_99$
Placeholder_130:0€€€€€€€€€
8
host_is_superhost#
Placeholder_10:0	€€€€€€€€€
D
calculated_host_listings_count"
Placeholder_4:0€€€€€€€€€
9
nearby_sites_rating"
Placeholder_5:0€€€€€€€€€
,
latitude 
Placeholder:0€€€€€€€€€
4
text_factor_0#
Placeholder_31:0€€€€€€€€€
4
text_factor_1#
Placeholder_32:0€€€€€€€€€
4
text_factor_2#
Placeholder_33:0€€€€€€€€€
4
text_factor_3#
Placeholder_34:0€€€€€€€€€
4
text_factor_4#
Placeholder_35:0€€€€€€€€€
4
text_factor_5#
Placeholder_36:0€€€€€€€€€
4
text_factor_6#
Placeholder_37:0€€€€€€€€€
4
text_factor_7#
Placeholder_38:0€€€€€€€€€9

preference+
ExpandDims_131:0€€€€€€€€€tensorflow/serving/predict