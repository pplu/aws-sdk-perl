
package Paws::Forecast::DeleteResourceTree;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteResourceTree');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DeleteResourceTree - Arguments for method DeleteResourceTree on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteResourceTree on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method DeleteResourceTree.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteResourceTree.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    $forecast->DeleteResourceTree(
      ResourceArn => 'MyArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/DeleteResourceTree>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the parent resource to delete. All
child resources of the parent resource will also be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteResourceTree in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

