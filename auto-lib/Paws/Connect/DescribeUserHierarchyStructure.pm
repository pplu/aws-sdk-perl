
package Paws::Connect::DescribeUserHierarchyStructure;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Connect::Types qw//;
  has InstanceId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeUserHierarchyStructure');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/user-hierarchy-structure/{InstanceId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Connect::DescribeUserHierarchyStructureResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'InstanceId' => 'InstanceId'
                  },
  'types' => {
               'InstanceId' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'InstanceId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeUserHierarchyStructure - Arguments for method DescribeUserHierarchyStructure on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeUserHierarchyStructure on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method DescribeUserHierarchyStructure.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeUserHierarchyStructure.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $DescribeUserHierarchyStructureResponse =
      $connect->DescribeUserHierarchyStructure(
      InstanceId => 'MyInstanceId',

      );

    # Results:
    my $HierarchyStructure =
      $DescribeUserHierarchyStructureResponse->HierarchyStructure;

    # Returns a L<Paws::Connect::DescribeUserHierarchyStructureResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/DescribeUserHierarchyStructure>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeUserHierarchyStructure in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

