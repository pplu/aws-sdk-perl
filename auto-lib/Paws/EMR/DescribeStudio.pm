
package Paws::EMR::DescribeStudio;
  use Moose;
  has StudioId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStudio');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::DescribeStudioOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::DescribeStudio - Arguments for method DescribeStudio on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStudio on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method DescribeStudio.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStudio.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $DescribeStudioOutput = $elasticmapreduce->DescribeStudio(
      StudioId => 'MyXmlStringMaxLen256',

    );

    # Results:
    my $Studio = $DescribeStudioOutput->Studio;

    # Returns a L<Paws::EMR::DescribeStudioOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/DescribeStudio>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StudioId => Str

The Amazon EMR Studio ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStudio in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

