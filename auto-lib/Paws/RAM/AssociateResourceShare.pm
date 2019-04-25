
package Paws::RAM::AssociateResourceShare;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Principals => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'principals');
  has ResourceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resourceArns');
  has ResourceShareArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceShareArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateResourceShare');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/associateresourceshare');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::AssociateResourceShareResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::AssociateResourceShare - Arguments for method AssociateResourceShare on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateResourceShare on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method AssociateResourceShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateResourceShare.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $AssociateResourceShareResponse = $ram->AssociateResourceShare(
      ResourceShareArn => 'MyString',
      ClientToken      => 'MyString',             # OPTIONAL
      Principals       => [ 'MyString', ... ],    # OPTIONAL
      ResourceArns     => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $ClientToken = $AssociateResourceShareResponse->ClientToken;
    my $ResourceShareAssociations =
      $AssociateResourceShareResponse->ResourceShareAssociations;

    # Returns a L<Paws::RAM::AssociateResourceShareResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/AssociateResourceShare>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 Principals => ArrayRef[Str|Undef]

The principals.



=head2 ResourceArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARN) of the resources.



=head2 B<REQUIRED> ResourceShareArn => Str

The Amazon Resource Name (ARN) of the resource share.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateResourceShare in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

