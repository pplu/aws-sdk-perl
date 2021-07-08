
package Paws::SSOAdmin::ListTagsForResource;
  use Moose;
  has InstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOAdmin::ListTagsForResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::SSOAdmin>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<AWS Single Sign-On Admin|Paws::SSOAdmin> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $sso = Paws->service('SSOAdmin');
    my $ListTagsForResourceResponse = $sso->ListTagsForResource(
      InstanceArn => 'MyInstanceArn',
      ResourceArn => 'MyGeneralArn',
      NextToken   => 'MyToken',         # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTagsForResourceResponse->NextToken;
    my $Tags      = $ListTagsForResourceResponse->Tags;

    # Returns a L<Paws::SSOAdmin::ListTagsForResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sso/ListTagsForResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceArn => Str

The ARN of the SSO instance under which the operation will be executed.
For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces in the I<AWS General Reference>.



=head2 NextToken => Str

The pagination token for the list API. Initially the value is null. Use
the output of previous API calls to make subsequent calls.



=head2 B<REQUIRED> ResourceArn => Str

The ARN of the resource with the tags to be listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

