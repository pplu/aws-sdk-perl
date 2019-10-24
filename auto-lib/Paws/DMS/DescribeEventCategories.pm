# Generated from json/callargs_class.tt

package Paws::DMS::DescribeEventCategories;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DMS::Types qw/DMS_Filter/;
  has Filters => (is => 'ro', isa => ArrayRef[DMS_Filter], predicate => 1);
  has SourceType => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeEventCategories');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DMS::DescribeEventCategoriesResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Filters' => {
                              'class' => 'Paws::DMS::Filter',
                              'type' => 'ArrayRef[DMS_Filter]'
                            },
               'SourceType' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeEventCategories - Arguments for method DescribeEventCategories on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEventCategories on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method DescribeEventCategories.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEventCategories.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $DescribeEventCategoriesResponse = $dms->DescribeEventCategories(
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
    my $EventCategoryGroupList =
      $DescribeEventCategoriesResponse->EventCategoryGroupList;

    # Returns a L<Paws::DMS::DescribeEventCategoriesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/DescribeEventCategories>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[DMS_Filter]

Filters applied to the action.



=head2 SourceType => Str

The type of AWS DMS resource that generates events.

Valid values: replication-instance | migration-task




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEventCategories in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

