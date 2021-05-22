
package Paws::Robomaker::BatchDeleteWorlds;
  use Moose;
  has Worlds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'worlds', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDeleteWorlds');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/batchDeleteWorlds');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::BatchDeleteWorldsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::BatchDeleteWorlds - Arguments for method BatchDeleteWorlds on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDeleteWorlds on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method BatchDeleteWorlds.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDeleteWorlds.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $BatchDeleteWorldsResponse = $robomaker->BatchDeleteWorlds(
      Worlds => [
        'MyArn', ...    # min: 1, max: 1224
      ],

    );

    # Results:
    my $UnprocessedWorlds = $BatchDeleteWorldsResponse->UnprocessedWorlds;

    # Returns a L<Paws::Robomaker::BatchDeleteWorldsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/BatchDeleteWorlds>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Worlds => ArrayRef[Str|Undef]

A list of Amazon Resource Names (arns) that correspond to worlds to
delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDeleteWorlds in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

