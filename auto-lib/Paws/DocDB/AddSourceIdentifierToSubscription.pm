
package Paws::DocDB::AddSourceIdentifierToSubscription;
  use Moose;
  has SourceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddSourceIdentifierToSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDB::AddSourceIdentifierToSubscriptionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AddSourceIdentifierToSubscriptionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::AddSourceIdentifierToSubscription - Arguments for method AddSourceIdentifierToSubscription on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddSourceIdentifierToSubscription on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method AddSourceIdentifierToSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddSourceIdentifierToSubscription.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $AddSourceIdentifierToSubscriptionResult =
      $rds->AddSourceIdentifierToSubscription(
      SourceIdentifier => 'MyString',
      SubscriptionName => 'MyString',

      );

    # Results:
    my $EventSubscription =
      $AddSourceIdentifierToSubscriptionResult->EventSubscription;

    # Returns a L<Paws::DocDB::AddSourceIdentifierToSubscriptionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/AddSourceIdentifierToSubscription>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceIdentifier => Str

The identifier of the event source to be added:

=over

=item *

If the source type is an instance, a C<DBInstanceIdentifier> must be
provided.

=item *

If the source type is a security group, a C<DBSecurityGroupName> must
be provided.

=item *

If the source type is a parameter group, a C<DBParameterGroupName> must
be provided.

=item *

If the source type is a snapshot, a C<DBSnapshotIdentifier> must be
provided.

=back




=head2 B<REQUIRED> SubscriptionName => Str

The name of the Amazon DocumentDB event notification subscription that
you want to add a source identifier to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddSourceIdentifierToSubscription in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

