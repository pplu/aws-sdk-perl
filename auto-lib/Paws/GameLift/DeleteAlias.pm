
package Paws::GameLift::DeleteAlias;
  use Moose;
  has AliasId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAlias');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DeleteAlias - Arguments for method DeleteAlias on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAlias on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DeleteAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAlias.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    $gamelift->DeleteAlias(
      AliasId => 'MyAliasId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DeleteAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AliasId => Str

Unique identifier for a fleet alias. Specify the alias you want to
delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAlias in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

