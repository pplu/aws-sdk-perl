package Paws::RDS::OptionGroup;
  use Moose;
  has AllowsVpcAndNonVpcInstanceMemberships => (is => 'ro', isa => 'Bool');
  has EngineName => (is => 'ro', isa => 'Str');
  has MajorEngineVersion => (is => 'ro', isa => 'Str');
  has OptionGroupArn => (is => 'ro', isa => 'Str');
  has OptionGroupDescription => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Options => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Option]', request_name => 'Option', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::OptionGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::OptionGroup object:

  $service_obj->Method(Att1 => { AllowsVpcAndNonVpcInstanceMemberships => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::OptionGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowsVpcAndNonVpcInstanceMemberships

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AllowsVpcAndNonVpcInstanceMemberships => Bool

  Indicates whether this option group can be applied to both VPC and
non-VPC instances. The value C<true> indicates the option group can be
applied to both VPC and non-VPC instances.


=head2 EngineName => Str

  Indicates the name of the engine that this option group can be applied
to.


=head2 MajorEngineVersion => Str

  Indicates the major engine version associated with this option group.


=head2 OptionGroupArn => Str

  The Amazon Resource Name (ARN) for the option group.


=head2 OptionGroupDescription => Str

  Provides a description of the option group.


=head2 OptionGroupName => Str

  Specifies the name of the option group.


=head2 Options => ArrayRef[L<Paws::RDS::Option>]

  Indicates what options are available in the option group.


=head2 VpcId => Str

  If B<AllowsVpcAndNonVpcInstanceMemberships> is C<false>, this field is
blank. If B<AllowsVpcAndNonVpcInstanceMemberships> is C<true> and this
field is blank, then this option group can be applied to both VPC and
non-VPC instances. If this field contains a value, then this option
group can only be applied to instances that are in the VPC indicated by
this field.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

