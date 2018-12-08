package Paws::IAM::ServiceLastAccessed;
  use Moose;
  has LastAuthenticated => (is => 'ro', isa => 'Str');
  has LastAuthenticatedEntity => (is => 'ro', isa => 'Str');
  has ServiceName => (is => 'ro', isa => 'Str', required => 1);
  has ServiceNamespace => (is => 'ro', isa => 'Str', required => 1);
  has TotalAuthenticatedEntities => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ServiceLastAccessed

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::ServiceLastAccessed object:

  $service_obj->Method(Att1 => { LastAuthenticated => $value, ..., TotalAuthenticatedEntities => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::ServiceLastAccessed object:

  $result = $service_obj->Method(...);
  $result->Att1->LastAuthenticated

=head1 DESCRIPTION

Contains details about the most recent attempt to access the service.

This data type is used as a response element in the
GetServiceLastAccessedDetails operation.

=head1 ATTRIBUTES


=head2 LastAuthenticated => Str

  The date and time, in ISO 8601 date-time format
(http://www.iso.org/iso/iso8601), when an authenticated entity most
recently attempted to access the service. AWS does not report
unauthenticated requests.

This field is null if no IAM entities attempted to access the service
within the reporting period
(http://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period).


=head2 LastAuthenticatedEntity => Str

  The ARN of the authenticated entity (user or role) that last attempted
to access the service. AWS does not report unauthenticated requests.

This field is null if no IAM entities attempted to access the service
within the reporting period
(http://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period).


=head2 B<REQUIRED> ServiceName => Str

  The name of the service in which access was attempted.


=head2 B<REQUIRED> ServiceNamespace => Str

  The namespace of the service in which access was attempted.

To learn the service namespace of a service, go to Actions, Resources,
and Condition Keys for AWS Services
(http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_actions-resources-contextkeys.html)
in the I<IAM User Guide>. Choose the name of the service to view
details for that service. In the first paragraph, find the service
prefix. For example, C<(service prefix: a4b)>. For more information
about service namespaces, see AWS Service Namespaces
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces)
in the I<AWS General Reference>.


=head2 TotalAuthenticatedEntities => Int

  The total number of authenticated entities that have attempted to
access the service.

This field is null if no IAM entities attempted to access the service
within the reporting period
(http://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#service-last-accessed-reporting-period).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

