package Paws::Quicksight::TagColumnOperation;
  use Moose;
  has ColumnName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ColumnTag]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::TagColumnOperation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::TagColumnOperation object:

  $service_obj->Method(Att1 => { ColumnName => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::TagColumnOperation object:

  $result = $service_obj->Method(...);
  $result->Att1->ColumnName

=head1 DESCRIPTION

A transform operation that tags a column with additional information.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ColumnName => Str

  The column that this operation acts on.


=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::Quicksight::ColumnTag>]

  The dataset column tag, currently only used for geospatial type
tagging. .

This is not tags for the AWS tagging feature. .



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

