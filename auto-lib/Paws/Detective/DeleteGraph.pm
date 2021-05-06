
package Paws::Detective::DeleteGraph;
  use Moose;
  has GraphArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGraph');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/graph/removal');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::DeleteGraph - Arguments for method DeleteGraph on L<Paws::Detective>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteGraph on the
L<Amazon Detective|Paws::Detective> service. Use the attributes of this class
as arguments to method DeleteGraph.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteGraph.

=head1 SYNOPSIS

    my $api.detective = Paws->service('Detective');
    $api . detective->DeleteGraph(
      GraphArn => 'MyGraphArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.detective/DeleteGraph>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GraphArn => Str

The ARN of the behavior graph to disable.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteGraph in L<Paws::Detective>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

