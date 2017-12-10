package Paws::DynamoDB::Projection;
  use Moose;
  has NonKeyAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ProjectionType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::Projection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::Projection object:

  $service_obj->Method(Att1 => { NonKeyAttributes => $value, ..., ProjectionType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::Projection object:

  $result = $service_obj->Method(...);
  $result->Att1->NonKeyAttributes

=head1 DESCRIPTION

Represents attributes that are copied (projected) from the table into
an index. These are in addition to the primary key attributes and index
key attributes, which are automatically projected.

=head1 ATTRIBUTES


=head2 NonKeyAttributes => ArrayRef[Str|Undef]

  Represents the non-key attribute names which will be projected into the
index.

For local secondary indexes, the total count of C<NonKeyAttributes>
summed across all of the local secondary indexes, must not exceed 20.
If you project the same attribute into two different indexes, this
counts as two distinct attributes when determining the total.


=head2 ProjectionType => Str

  The set of attributes that are projected into the index:

=over

=item *

C<KEYS_ONLY> - Only the index and primary keys are projected into the
index.

=item *

C<INCLUDE> - Only the specified table attributes are projected into the
index. The list of projected attributes are in C<NonKeyAttributes>.

=item *

C<ALL> - All of the table attributes are projected into the index.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

