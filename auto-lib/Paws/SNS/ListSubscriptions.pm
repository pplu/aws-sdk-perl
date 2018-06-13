
package Paws::SNS::ListSubscriptions;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSubscriptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SNS::ListSubscriptionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListSubscriptionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::ListSubscriptions - Arguments for method ListSubscriptions on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSubscriptions on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method ListSubscriptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSubscriptions.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    my $ListSubscriptionsResponse = $sns->ListSubscriptions(
      NextToken => 'MynextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken     = $ListSubscriptionsResponse->NextToken;
    my $Subscriptions = $ListSubscriptionsResponse->Subscriptions;

    # Returns a L<Paws::SNS::ListSubscriptionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/ListSubscriptions>

=head1 ATTRIBUTES


=head2 NextToken => Str

Token returned by the previous C<ListSubscriptions> request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSubscriptions in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

