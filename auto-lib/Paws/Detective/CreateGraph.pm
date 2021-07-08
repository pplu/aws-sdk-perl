
package Paws::Detective::CreateGraph;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Detective::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGraph');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/graph');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Detective::CreateGraphResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::CreateGraph - Arguments for method CreateGraph on L<Paws::Detective>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGraph on the
L<Amazon Detective|Paws::Detective> service. Use the attributes of this class
as arguments to method CreateGraph.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGraph.

=head1 SYNOPSIS

    my $api.detective = Paws->service('Detective');
    my $CreateGraphResponse = $api . detective->CreateGraph(
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $GraphArn = $CreateGraphResponse->GraphArn;

    # Returns a L<Paws::Detective::CreateGraphResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.detective/CreateGraph>

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Detective::TagMap>

The tags to assign to the new behavior graph. You can add up to 50
tags. For each tag, you provide the tag key and the tag value. Each tag
key can contain up to 128 characters. Each tag value can contain up to
256 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGraph in L<Paws::Detective>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

