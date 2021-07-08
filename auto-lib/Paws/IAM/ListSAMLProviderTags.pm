
package Paws::IAM::ListSAMLProviderTags;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has SAMLProviderArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSAMLProviderTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::ListSAMLProviderTagsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListSAMLProviderTagsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ListSAMLProviderTags - Arguments for method ListSAMLProviderTags on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSAMLProviderTags on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method ListSAMLProviderTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSAMLProviderTags.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    my $ListSAMLProviderTagsResponse = $iam->ListSAMLProviderTags(
      SAMLProviderArn => 'MyarnType',
      Marker          => 'MymarkerType',    # OPTIONAL
      MaxItems        => 1,                 # OPTIONAL
    );

    # Results:
    my $IsTruncated = $ListSAMLProviderTagsResponse->IsTruncated;
    my $Marker      = $ListSAMLProviderTagsResponse->Marker;
    my $Tags        = $ListSAMLProviderTagsResponse->Tags;

    # Returns a L<Paws::IAM::ListSAMLProviderTagsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/ListSAMLProviderTags>

=head1 ATTRIBUTES


=head2 Marker => Str

Use this parameter only when paginating results and only after you
receive a response indicating that the results are truncated. Set it to
the value of the C<Marker> element in the response that you received to
indicate where the next call should start.



=head2 MaxItems => Int

(Optional) Use this only when paginating results to indicate the
maximum number of items that you want in the response. If additional
items exist beyond the maximum that you specify, the C<IsTruncated>
response element is C<true>.

If you do not include this parameter, it defaults to 100. Note that IAM
might return fewer results, even when more results are available. In
that case, the C<IsTruncated> response element returns C<true>, and
C<Marker> contains a value to include in the subsequent call that tells
the service where to continue from.



=head2 B<REQUIRED> SAMLProviderArn => Str

The ARN of the Security Assertion Markup Language (SAML) identity
provider whose tags you want to see.

This parameter accepts (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters that consist
of upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: =,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSAMLProviderTags in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

