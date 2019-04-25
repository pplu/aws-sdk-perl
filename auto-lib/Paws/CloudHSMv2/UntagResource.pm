
package Paws::CloudHSMv2::UntagResource;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has TagKeyList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudHSMv2::UntagResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::UntagResource - Arguments for method UntagResource on L<Paws::CloudHSMv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<AWS CloudHSM V2|Paws::CloudHSMv2> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $cloudhsmv2 = Paws->service('CloudHSMv2');
    my $UntagResourceResponse = $cloudhsmv2->UntagResource(
      ResourceId => 'MyClusterId',
      TagKeyList => [
        'MyTagKey', ...    # min: 1, max: 128
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The cluster identifier (ID) for the cluster whose tags you are
removing. To find the cluster ID, use DescribeClusters.



=head2 B<REQUIRED> TagKeyList => ArrayRef[Str|Undef]

A list of one or more tag keys for the tags that you are removing.
Specify only the tag keys, not the tag values.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::CloudHSMv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

