package Paws::DynamoDB::LocalSecondaryIndexDescription;
  use Moose;
  has IndexArn => (is => 'ro', isa => 'Str');
  has IndexName => (is => 'ro', isa => 'Str');
  has IndexSizeBytes => (is => 'ro', isa => 'Int');
  has ItemCount => (is => 'ro', isa => 'Int');
  has KeySchema => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::KeySchemaElement]');
  has Projection => (is => 'ro', isa => 'Paws::DynamoDB::Projection');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::LocalSecondaryIndexDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::LocalSecondaryIndexDescription object:

  $service_obj->Method(Att1 => { IndexArn => $value, ..., Projection => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::LocalSecondaryIndexDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->IndexArn

=head1 DESCRIPTION

Represents the properties of a local secondary index.

=head1 ATTRIBUTES

=head2 IndexArn => Str

  The Amazon Resource Name (ARN) that uniquely identifies the index.

=head2 IndexName => Str

  Represents the name of the local secondary index.

=head2 IndexSizeBytes => Int

  The total size of the specified index, in bytes. DynamoDB updates this
value approximately every six hours. Recent changes might not be
reflected in this value.

=head2 ItemCount => Int

  The number of items in the specified index. DynamoDB updates this value
approximately every six hours. Recent changes might not be reflected in
this value.

=head2 KeySchema => ArrayRef[L<Paws::DynamoDB::KeySchemaElement>]

  The complete index key schema, which consists of one or more pairs of
attribute names and key types (C<HASH> or C<RANGE>).

=head2 Projection => L<Paws::DynamoDB::Projection>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

