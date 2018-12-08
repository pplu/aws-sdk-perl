
package Paws::IAM::ListPoliciesGrantingServiceAccess;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has ServiceNamespaces => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPoliciesGrantingServiceAccess');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::ListPoliciesGrantingServiceAccessResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListPoliciesGrantingServiceAccessResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ListPoliciesGrantingServiceAccess - Arguments for method ListPoliciesGrantingServiceAccess on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPoliciesGrantingServiceAccess on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method ListPoliciesGrantingServiceAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPoliciesGrantingServiceAccess.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    my $ListPoliciesGrantingServiceAccessResponse =
      $iam->ListPoliciesGrantingServiceAccess(
      Arn               => 'MyarnType',
      ServiceNamespaces => [
        'MyserviceNamespaceType', ...    # min: 1, max: 64
      ],
      Marker => 'MymarkerType',          # OPTIONAL
      );

    # Results:
    my $IsTruncated = $ListPoliciesGrantingServiceAccessResponse->IsTruncated;
    my $Marker      = $ListPoliciesGrantingServiceAccessResponse->Marker;
    my $PoliciesGrantingServiceAccess =
      $ListPoliciesGrantingServiceAccessResponse->PoliciesGrantingServiceAccess;

    # Returns a L<Paws::IAM::ListPoliciesGrantingServiceAccessResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/ListPoliciesGrantingServiceAccess>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the IAM identity (user, group, or role) whose policies you
want to list.



=head2 Marker => Str

Use this parameter only when paginating results and only after you
receive a response indicating that the results are truncated. Set it to
the value of the C<Marker> element in the response that you received to
indicate where the next call should start.



=head2 B<REQUIRED> ServiceNamespaces => ArrayRef[Str|Undef]

The service namespace for the AWS services whose policies you want to
list.

To learn the service namespace for a service, go to Actions, Resources,
and Condition Keys for AWS Services
(http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_actions-resources-contextkeys.html)
in the I<IAM User Guide>. Choose the name of the service to view
details for that service. In the first paragraph, find the service
prefix. For example, C<(service prefix: a4b)>. For more information
about service namespaces, see AWS Service Namespaces
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces)
in the I<AWS General Reference>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPoliciesGrantingServiceAccess in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

