# Generated from json/callargs_class.tt

package Paws::Transfer::ListTagsForResource;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Transfer::Types qw//;
  has Arn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListTagsForResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Transfer::ListTagsForResourceResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Arn' => {
                          'type' => 'Str'
                        },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'IsRequired' => {
                    'Arn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<AWS Transfer for SFTP|Paws::Transfer> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $ListTagsForResourceResponse = $transfer->ListTagsForResource(
      Arn        => 'MyArn',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Arn       = $ListTagsForResourceResponse->Arn;
    my $NextToken = $ListTagsForResourceResponse->NextToken;
    my $Tags      = $ListTagsForResourceResponse->Tags;

    # Returns a L<Paws::Transfer::ListTagsForResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/ListTagsForResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

Requests the tags associated with a particular Amazon Resource Name
(ARN). An ARN is an identifier for a specific AWS resource, such as a
server, user, or role.



=head2 MaxResults => Int

Specifies the number of tags to return as a response to the
C<ListTagsForResource> request.



=head2 NextToken => Str

When you request additional results from the C<ListTagsForResource>
call, a C<NextToken> parameter is returned in the input. You can then
pass in a subsequent command the C<NextToken> parameter to continue
listing additional tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

