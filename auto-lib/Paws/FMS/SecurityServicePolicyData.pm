package Paws::FMS::SecurityServicePolicyData;
  use Moose;
  has ManagedServiceData => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::SecurityServicePolicyData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FMS::SecurityServicePolicyData object:

  $service_obj->Method(Att1 => { ManagedServiceData => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FMS::SecurityServicePolicyData object:

  $result = $service_obj->Method(...);
  $result->Att1->ManagedServiceData

=head1 DESCRIPTION

Details about the security service that is being used to protect the
resources.

=head1 ATTRIBUTES


=head2 ManagedServiceData => Str

  Details about the service. This contains C<WAF> data in JSON format, as
shown in the following example:

C<ManagedServiceData": "{\"type\": \"WAF\", \"ruleGroups\": [{\"id\":
\"12345678-1bcd-9012-efga-0987654321ab\", \"overrideAction\" :
{\"type\": \"COUNT\"}}], \"defaultAction\": {\"type\": \"BLOCK\"}}>


=head2 B<REQUIRED> Type => Str

  The service that the policy is using to protect the resources. This
value is C<WAF>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

