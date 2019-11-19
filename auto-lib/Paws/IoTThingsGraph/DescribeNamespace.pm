# Generated from json/callargs_class.tt

package Paws::IoTThingsGraph::DescribeNamespace;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTThingsGraph::Types qw//;
  has NamespaceName => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeNamespace');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTThingsGraph::DescribeNamespaceResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NamespaceName' => 'namespaceName'
                     },
  'types' => {
               'NamespaceName' => {
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

Paws::IoTThingsGraph::DescribeNamespace - Arguments for method DescribeNamespace on L<Paws::IoTThingsGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeNamespace on the
L<AWS IoT Things Graph|Paws::IoTThingsGraph> service. Use the attributes of this class
as arguments to method DescribeNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeNamespace.

=head1 SYNOPSIS

    my $iotthingsgraph = Paws->service('IoTThingsGraph');
    my $DescribeNamespaceResponse = $iotthingsgraph->DescribeNamespace(
      NamespaceName => 'MyNamespaceName',    # OPTIONAL
    );

    # Results:
    my $NamespaceArn     = $DescribeNamespaceResponse->NamespaceArn;
    my $NamespaceName    = $DescribeNamespaceResponse->NamespaceName;
    my $NamespaceVersion = $DescribeNamespaceResponse->NamespaceVersion;
    my $TrackingNamespaceName =
      $DescribeNamespaceResponse->TrackingNamespaceName;
    my $TrackingNamespaceVersion =
      $DescribeNamespaceResponse->TrackingNamespaceVersion;

    # Returns a L<Paws::IoTThingsGraph::DescribeNamespaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotthingsgraph/DescribeNamespace>

=head1 ATTRIBUTES


=head2 NamespaceName => Str

The name of the user's namespace. Set this to C<aws> to get the public
namespace.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeNamespace in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

