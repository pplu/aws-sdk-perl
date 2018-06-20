
package Paws::Inspector::ListEventSubscriptions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEventSubscriptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector::ListEventSubscriptionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListEventSubscriptions - Arguments for method ListEventSubscriptions on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEventSubscriptions on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method ListEventSubscriptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEventSubscriptions.

=head1 SYNOPSIS

    my $inspector = Paws->service('Inspector');
    # List event subscriptions
    # Lists all the event subscriptions for the assessment template that is
    # specified by the ARN of the assessment template.
    my $ListEventSubscriptionsResponse = $inspector->ListEventSubscriptions(
      {
        'MaxResults' => 123,
        'ResourceArn' =>
'arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX/template/0-7sbz2Kz0'
      }
    );

    # Results:
    my $nextToken     = $ListEventSubscriptionsResponse->nextToken;
    my $subscriptions = $ListEventSubscriptionsResponse->subscriptions;

    # Returns a L<Paws::Inspector::ListEventSubscriptionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/ListEventSubscriptions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

You can use this parameter to indicate the maximum number of items you
want in the response. The default value is 10. The maximum value is
500.



=head2 NextToken => Str

You can use this parameter when paginating results. Set the value of
this parameter to null on your first call to the
B<ListEventSubscriptions> action. Subsequent calls to the action fill
B<nextToken> in the request with the value of B<NextToken> from the
previous response to continue listing data.



=head2 ResourceArn => Str

The ARN of the assessment template for which you want to list the
existing event subscriptions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEventSubscriptions in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

