package Paws::ES::Limits;
  use Moose;
  has AdditionalLimits => (is => 'ro', isa => 'ArrayRef[Paws::ES::AdditionalLimit]');
  has InstanceLimits => (is => 'ro', isa => 'Paws::ES::InstanceLimits');
  has StorageTypes => (is => 'ro', isa => 'ArrayRef[Paws::ES::StorageType]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::Limits

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::Limits object:

  $service_obj->Method(Att1 => { AdditionalLimits => $value, ..., StorageTypes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::Limits object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalLimits

=head1 DESCRIPTION

Limits for given InstanceType and for each of it's role.

Limits contains following C< StorageTypes, > C< InstanceLimits > and C<
AdditionalLimits>

=head1 ATTRIBUTES


=head2 AdditionalLimits => ArrayRef[L<Paws::ES::AdditionalLimit>]

  List of additional limits that are specific to a given InstanceType and
for each of it's C< InstanceRole > .


=head2 InstanceLimits => L<Paws::ES::InstanceLimits>

  


=head2 StorageTypes => ArrayRef[L<Paws::ES::StorageType>]

  StorageType represents the list of storage related types and attributes
that are available for given InstanceType.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

