
package Paws::DocDB::DescribeEventCategories;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::Filter]');
  has SourceType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEventCategories');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDB::EventCategoriesMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEventCategoriesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DescribeEventCategories - Arguments for method DescribeEventCategories on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEventCategories on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method DescribeEventCategories.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEventCategories.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $EventCategoriesMessage = $rds->DescribeEventCategories(
      Filters => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],    # OPTIONAL
      SourceType => 'MyString',    # OPTIONAL
    );

    # Results:
    my $EventCategoriesMapList =
      $EventCategoriesMessage->EventCategoriesMapList;

    # Returns a L<Paws::DocDB::EventCategoriesMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeEventCategories>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::DocDB::Filter>]

This parameter is not currently supported.



=head2 SourceType => Str

The type of source that is generating the events.

Valid values: C<db-instance>, C<db-parameter-group>,
C<db-security-group>, C<db-snapshot>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEventCategories in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

