
package Paws::RAM::CreateResourceShare;
  use Moose;
  has AllowExternalPrincipals => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'allowExternalPrincipals');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Principals => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'principals');
  has ResourceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resourceArns');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RAM::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResourceShare');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/createresourceshare');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::CreateResourceShareResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::CreateResourceShare - Arguments for method CreateResourceShare on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResourceShare on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method CreateResourceShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResourceShare.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $CreateResourceShareResponse = $ram->CreateResourceShare(
      Name                    => 'MyString',
      AllowExternalPrincipals => 1,                      # OPTIONAL
      ClientToken             => 'MyString',             # OPTIONAL
      Principals              => [ 'MyString', ... ],    # OPTIONAL
      ResourceArns            => [ 'MyString', ... ],    # OPTIONAL
      Tags                    => [
        {
          Key   => 'MyTagKey',                           # OPTIONAL
          Value => 'MyTagValue',                         # OPTIONAL
        },
        ...
      ],                                                 # OPTIONAL
    );

    # Results:
    my $ClientToken   = $CreateResourceShareResponse->ClientToken;
    my $ResourceShare = $CreateResourceShareResponse->ResourceShare;

    # Returns a L<Paws::RAM::CreateResourceShareResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/CreateResourceShare>

=head1 ATTRIBUTES


=head2 AllowExternalPrincipals => Bool

Indicates whether principals outside your organization can be
associated with a resource share.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> Name => Str

The name of the resource share.



=head2 Principals => ArrayRef[Str|Undef]

The principals to associate with the resource share. The possible
values are IDs of AWS accounts, the ARN of an OU or organization from
AWS Organizations.



=head2 ResourceArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARN) of the resources to associate with the
resource share.



=head2 Tags => ArrayRef[L<Paws::RAM::Tag>]

One or more tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResourceShare in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

