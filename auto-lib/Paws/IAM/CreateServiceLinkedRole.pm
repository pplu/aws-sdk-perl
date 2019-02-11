
package Paws::IAM::CreateServiceLinkedRole;
  use Moose;
  has AWSServiceName => (is => 'ro', isa => 'Str', required => 1);
  has CustomSuffix => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateServiceLinkedRole');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::CreateServiceLinkedRoleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateServiceLinkedRoleResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateServiceLinkedRole - Arguments for method CreateServiceLinkedRole on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateServiceLinkedRole on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method CreateServiceLinkedRole.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateServiceLinkedRole.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    my $CreateServiceLinkedRoleResponse = $iam->CreateServiceLinkedRole(
      AWSServiceName => 'MygroupNameType',
      CustomSuffix   => 'MycustomSuffixType',       # OPTIONAL
      Description    => 'MyroleDescriptionType',    # OPTIONAL
    );

    # Results:
    my $Role = $CreateServiceLinkedRoleResponse->Role;

    # Returns a L<Paws::IAM::CreateServiceLinkedRoleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/CreateServiceLinkedRole>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AWSServiceName => Str

The service principal for the AWS service to which this role is
attached. You use a string similar to a URL but without the http:// in
front. For example: C<elasticbeanstalk.amazonaws.com>.

Service principals are unique and case-sensitive. To find the exact
service principal for your service-linked role, see AWS Services That
Work with IAM
(http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html)
in the I<IAM User Guide> and look for the services that have B<Yes >in
the B<Service-Linked Role> column. Choose the B<Yes> link to view the
service-linked role documentation for that service.



=head2 CustomSuffix => Str

A string that you provide, which is combined with the service-provided
prefix to form the complete role name. If you make multiple requests
for the same service, then you must supply a different C<CustomSuffix>
for each request. Otherwise the request fails with a duplicate role
name error. For example, you could add C<-1> or C<-debug> to the
suffix.

Some services do not support the C<CustomSuffix> parameter. If you
provide an optional suffix and the operation fails, try the operation
again without the suffix.



=head2 Description => Str

The description of the role.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateServiceLinkedRole in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

