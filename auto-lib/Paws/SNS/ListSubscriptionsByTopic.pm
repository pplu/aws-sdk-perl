
package Paws::SNS::ListSubscriptionsByTopic;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSubscriptionsByTopic');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SNS::ListSubscriptionsByTopicResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListSubscriptionsByTopicResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::ListSubscriptionsByTopic - Arguments for method ListSubscriptionsByTopic on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSubscriptionsByTopic on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method ListSubscriptionsByTopic.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSubscriptionsByTopic.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    my $ListSubscriptionsByTopicResponse = $sns->ListSubscriptionsByTopic(
      TopicArn  => 'MytopicARN',
      NextToken => 'MynextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken     = $ListSubscriptionsByTopicResponse->NextToken;
    my $Subscriptions = $ListSubscriptionsByTopicResponse->Subscriptions;

    # Returns a L<Paws::SNS::ListSubscriptionsByTopicResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/ListSubscriptionsByTopic>

=head1 ATTRIBUTES


=head2 NextToken => Str

Token returned by the previous C<ListSubscriptionsByTopic> request.



=head2 B<REQUIRED> TopicArn => Str

The ARN of the topic for which you wish to find subscriptions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSubscriptionsByTopic in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

