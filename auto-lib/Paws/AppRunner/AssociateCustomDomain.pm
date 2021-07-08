
package Paws::AppRunner::AssociateCustomDomain;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has EnableWWWSubdomain => (is => 'ro', isa => 'Bool');
  has ServiceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateCustomDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppRunner::AssociateCustomDomainResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::AssociateCustomDomain - Arguments for method AssociateCustomDomain on L<Paws::AppRunner>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateCustomDomain on the
L<AWS App Runner|Paws::AppRunner> service. Use the attributes of this class
as arguments to method AssociateCustomDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateCustomDomain.

=head1 SYNOPSIS

    my $apprunner = Paws->service('AppRunner');
    my $AssociateCustomDomainResponse = $apprunner->AssociateCustomDomain(
      DomainName         => 'MyDomainName',
      ServiceArn         => 'MyAppRunnerResourceArn',
      EnableWWWSubdomain => 1,                          # OPTIONAL
    );

    # Results:
    my $CustomDomain = $AssociateCustomDomainResponse->CustomDomain;
    my $DNSTarget    = $AssociateCustomDomainResponse->DNSTarget;
    my $ServiceArn   = $AssociateCustomDomainResponse->ServiceArn;

    # Returns a L<Paws::AppRunner::AssociateCustomDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apprunner/AssociateCustomDomain>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

A custom domain endpoint to associate. Specify a root domain (for
example, C<example.com>), a subdomain (for example,
C<login.example.com> or C<admin.login.example.com>), or a wildcard (for
example, C<*.example.com>).



=head2 EnableWWWSubdomain => Bool

Set to C<true> to associate the subdomain C<www.I<DomainName> > with
the App Runner service in addition to the base domain.

Default: C<true>



=head2 B<REQUIRED> ServiceArn => Str

The Amazon Resource Name (ARN) of the App Runner service that you want
to associate a custom domain name with.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateCustomDomain in L<Paws::AppRunner>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

