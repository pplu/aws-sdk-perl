
package Paws::Neptune::AddSourceIdentifierToSubscription;
  use Moose;
  has SourceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddSourceIdentifierToSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptune::AddSourceIdentifierToSubscriptionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AddSourceIdentifierToSubscriptionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::AddSourceIdentifierToSubscription - Arguments for method AddSourceIdentifierToSubscription on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddSourceIdentifierToSubscription on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method AddSourceIdentifierToSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddSourceIdentifierToSubscription.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $AddSourceIdentifierToSubscriptionResult =
      $rds->AddSourceIdentifierToSubscription(
      SourceIdentifier => 'MyString',
      SubscriptionName => 'MyString',

      );

    # Results:
    my $EventSubscription =
      $AddSourceIdentifierToSubscriptionResult->EventSubscription;

   # Returns a L<Paws::Neptune::AddSourceIdentifierToSubscriptionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/AddSourceIdentifierToSubscription>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceIdentifier => Str

The identifier of the event source to be added.

Constraints:

=over

=item *

If the source type is a DB instance, then a C<DBInstanceIdentifier>
must be supplied.

=item *

If the source type is a DB security group, a C<DBSecurityGroupName>
must be supplied.

=item *

If the source type is a DB parameter group, a C<DBParameterGroupName>
must be supplied.

=item *

If the source type is a DB snapshot, a C<DBSnapshotIdentifier> must be
supplied.

=back




=head2 B<REQUIRED> SubscriptionName => Str

The name of the event notification subscription you want to add a
source identifier to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddSourceIdentifierToSubscription in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

