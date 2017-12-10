package Paws::SSM::InstanceInformationStringFilter;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::InstanceInformationStringFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::InstanceInformationStringFilter object:

  $service_obj->Method(Att1 => { Key => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::InstanceInformationStringFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

The filters to describe or get information about your managed
instances.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  The filter key name to describe your instances. For example:

"InstanceIds"|"AgentVersion"|"PingStatus"|"PlatformTypes"|"ActivationIds"|"IamRole"|"ResourceType"|"AssociationStatus"|"Tag
Key"


=head2 B<REQUIRED> Values => ArrayRef[Str|Undef]

  The filter values.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

