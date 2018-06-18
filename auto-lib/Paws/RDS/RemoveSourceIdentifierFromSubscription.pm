
package Paws::RDS::RemoveSourceIdentifierFromSubscription;
  use Moose;
  has SourceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveSourceIdentifierFromSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::RemoveSourceIdentifierFromSubscriptionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RemoveSourceIdentifierFromSubscriptionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::RemoveSourceIdentifierFromSubscription - Arguments for method RemoveSourceIdentifierFromSubscription on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveSourceIdentifierFromSubscription on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method RemoveSourceIdentifierFromSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveSourceIdentifierFromSubscription.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To remove a source identifier from a DB event subscription
    # This example removes the specified source identifier from the specified DB
    # event subscription.
    my $RemoveSourceIdentifierFromSubscriptionResult =
      $rds->RemoveSourceIdentifierFromSubscription(
      {
        'SourceIdentifier' => 'mymysqlinstance',
        'SubscriptionName' => 'myeventsubscription'
      }
      );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/RemoveSourceIdentifierFromSubscription>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceIdentifier => Str

The source identifier to be removed from the subscription, such as the
B<DB instance identifier> for a DB instance or the name of a security
group.



=head2 B<REQUIRED> SubscriptionName => Str

The name of the RDS event notification subscription you want to remove
a source identifier from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveSourceIdentifierFromSubscription in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

