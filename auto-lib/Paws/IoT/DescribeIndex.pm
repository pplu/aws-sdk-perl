
package Paws::IoT::DescribeIndex;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has IndexName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeIndex');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/indices/{indexName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::DescribeIndexResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'IndexName' => 1
                  },
  'types' => {
               'IndexName' => {
                                'type' => 'Str'
                              }
             },
  'ParamInURI' => {
                    'IndexName' => 'indexName'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeIndex - Arguments for method DescribeIndex on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeIndex on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeIndex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeIndex.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeIndexResponse = $iot->DescribeIndex(
      IndexName => 'MyIndexName',

    );

    # Results:
    my $IndexName   = $DescribeIndexResponse->IndexName;
    my $IndexStatus = $DescribeIndexResponse->IndexStatus;
    my $Schema      = $DescribeIndexResponse->Schema;

    # Returns a L<Paws::IoT::DescribeIndexResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeIndex>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IndexName => Str

The index name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeIndex in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

