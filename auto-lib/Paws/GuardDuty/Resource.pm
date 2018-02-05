package Paws::GuardDuty::Resource;
  use Moose;
  has AccessKeyDetails => (is => 'ro', isa => 'Paws::GuardDuty::AccessKeyDetails', request_name => 'accessKeyDetails', traits => ['NameInRequest']);
  has InstanceDetails => (is => 'ro', isa => 'Paws::GuardDuty::InstanceDetails', request_name => 'instanceDetails', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::Resource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::Resource object:

  $service_obj->Method(Att1 => { AccessKeyDetails => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::Resource object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessKeyDetails

=head1 DESCRIPTION

The AWS resource associated with the activity that prompted GuardDuty
to generate a finding.

=head1 ATTRIBUTES


=head2 AccessKeyDetails => L<Paws::GuardDuty::AccessKeyDetails>

  


=head2 InstanceDetails => L<Paws::GuardDuty::InstanceDetails>

  


=head2 ResourceType => Str

  The type of the AWS resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

