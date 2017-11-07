package Paws::ES::StorageTypeLimit;
  use Moose;
  has LimitName => (is => 'ro', isa => 'Str');
  has LimitValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::StorageTypeLimit

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::StorageTypeLimit object:

  $service_obj->Method(Att1 => { LimitName => $value, ..., LimitValues => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::StorageTypeLimit object:

  $result = $service_obj->Method(...);
  $result->Att1->LimitName

=head1 DESCRIPTION

Limits that are applicable for given storage type.

=head1 ATTRIBUTES


=head2 LimitName => Str

  Name of storage limits that are applicable for given storage type. If
C< StorageType > is ebs, following storage options are applicable

=over

=item 1. MinimumVolumeSize

Minimum amount of volume size that is applicable for given storage
type.It can be empty if it is not applicable.

=item 2. MaximumVolumeSize

Maximum amount of volume size that is applicable for given storage
type.It can be empty if it is not applicable.

=item 3. MaximumIops

Maximum amount of Iops that is applicable for given storage type.It can
be empty if it is not applicable.

=item 4. MinimumIops

Minimum amount of Iops that is applicable for given storage type.It can
be empty if it is not applicable.

=back



=head2 LimitValues => ArrayRef[Str|Undef]

  Values for the C< StorageTypeLimit$LimitName > .



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

