package Paws::DynamoDB::GlobalSecondaryIndexUpdate;
  use Moose;
  has Create => (is => 'ro', isa => 'Paws::DynamoDB::CreateGlobalSecondaryIndexAction');
  has Delete => (is => 'ro', isa => 'Paws::DynamoDB::DeleteGlobalSecondaryIndexAction');
  has Update => (is => 'ro', isa => 'Paws::DynamoDB::UpdateGlobalSecondaryIndexAction');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::GlobalSecondaryIndexUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::GlobalSecondaryIndexUpdate object:

  $service_obj->Method(Att1 => { Create => $value, ..., Update => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::GlobalSecondaryIndexUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->Create

=head1 DESCRIPTION

Represents one of the following:

=over

=item *

A new global secondary index to be added to an existing table.

=item *

New provisioned throughput parameters for an existing global secondary
index.

=item *

An existing global secondary index to be removed from an existing
table.

=back


=head1 ATTRIBUTES


=head2 Create => L<Paws::DynamoDB::CreateGlobalSecondaryIndexAction>

  The parameters required for creating a global secondary index on an
existing table:

=over

=item *

C<IndexName>

=item *

C<KeySchema>

=item *

C<AttributeDefinitions>

=item *

C<Projection>

=item *

C<ProvisionedThroughput>

=back



=head2 Delete => L<Paws::DynamoDB::DeleteGlobalSecondaryIndexAction>

  The name of an existing global secondary index to be removed.


=head2 Update => L<Paws::DynamoDB::UpdateGlobalSecondaryIndexAction>

  The name of an existing global secondary index, along with new
provisioned throughput settings to be applied to that index.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

