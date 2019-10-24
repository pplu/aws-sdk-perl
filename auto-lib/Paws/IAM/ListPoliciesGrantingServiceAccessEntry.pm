# Generated from default/object.tt
package Paws::IAM::ListPoliciesGrantingServiceAccessEntry;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::IAM::Types qw/IAM_PolicyGrantingServiceAccess/;
  has Policies => (is => 'ro', isa => ArrayRef[IAM_PolicyGrantingServiceAccess]);
  has ServiceNamespace => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServiceNamespace' => {
                                       'type' => 'Str'
                                     },
               'Policies' => {
                               'class' => 'Paws::IAM::PolicyGrantingServiceAccess',
                               'type' => 'ArrayRef[IAM_PolicyGrantingServiceAccess]'
                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ListPoliciesGrantingServiceAccessEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::ListPoliciesGrantingServiceAccessEntry object:

  $service_obj->Method(Att1 => { Policies => $value, ..., ServiceNamespace => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::ListPoliciesGrantingServiceAccessEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Policies

=head1 DESCRIPTION

Contains details about the permissions policies that are attached to
the specified identity (user, group, or role).

This data type is used as a response element in the
ListPoliciesGrantingServiceAccess operation.

=head1 ATTRIBUTES


=head2 Policies => ArrayRef[IAM_PolicyGrantingServiceAccess]

  The C<PoliciesGrantingServiceAccess> object that contains details about
the policy.


=head2 ServiceNamespace => Str

  The namespace of the service that was accessed.

To learn the service namespace of a service, go to Actions, Resources,
and Condition Keys for AWS Services
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_actions-resources-contextkeys.html)
in the I<IAM User Guide>. Choose the name of the service to view
details for that service. In the first paragraph, find the service
prefix. For example, C<(service prefix: a4b)>. For more information
about service namespaces, see AWS Service Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces)
in the I<AWS General Reference>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

