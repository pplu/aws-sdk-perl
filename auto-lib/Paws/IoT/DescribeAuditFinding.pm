
package Paws::IoT::DescribeAuditFinding;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has FindingId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeAuditFinding');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/audit/findings/{findingId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::DescribeAuditFindingResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'FindingId' => 1
                  },
  'types' => {
               'FindingId' => {
                                'type' => 'Str'
                              }
             },
  'ParamInURI' => {
                    'FindingId' => 'findingId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeAuditFinding - Arguments for method DescribeAuditFinding on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAuditFinding on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeAuditFinding.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAuditFinding.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeAuditFindingResponse = $iot->DescribeAuditFinding(
      FindingId => 'MyFindingId',

    );

    # Results:
    my $Finding = $DescribeAuditFindingResponse->Finding;

    # Returns a L<Paws::IoT::DescribeAuditFindingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeAuditFinding>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FindingId => Str

A unique identifier for a single audit finding. You can use this
identifier to apply mitigation actions to the finding.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAuditFinding in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

