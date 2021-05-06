
package Paws::OpsWorks::ListTags;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::ListTagsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::ListTags - Arguments for method ListTags on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTags on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method ListTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTags.

=head1 SYNOPSIS

    my $opsworks = Paws->service('OpsWorks');
    my $ListTagsResult = $opsworks->ListTags(
      ResourceArn => 'MyResourceArn',
      MaxResults  => 1,                 # OPTIONAL
      NextToken   => 'MyNextToken',     # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTagsResult->NextToken;
    my $Tags      = $ListTagsResult->Tags;

    # Returns a L<Paws::OpsWorks::ListTagsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/ListTags>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Do not use. A validation exception occurs if you add a C<MaxResults>
parameter to a C<ListTagsRequest> call.



=head2 NextToken => Str

Do not use. A validation exception occurs if you add a C<NextToken>
parameter to a C<ListTagsRequest> call.



=head2 B<REQUIRED> ResourceArn => Str

The stack or layer's Amazon Resource Number (ARN).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTags in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

