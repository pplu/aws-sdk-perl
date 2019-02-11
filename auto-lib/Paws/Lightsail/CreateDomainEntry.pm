
package Paws::Lightsail::CreateDomainEntry;
  use Moose;
  has DomainEntry => (is => 'ro', isa => 'Paws::Lightsail::DomainEntry', traits => ['NameInRequest'], request_name => 'domainEntry' , required => 1);
  has DomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDomainEntry');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::CreateDomainEntryResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateDomainEntry - Arguments for method CreateDomainEntry on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDomainEntry on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CreateDomainEntry.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDomainEntry.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CreateDomainEntryResult = $lightsail->CreateDomainEntry(
      DomainEntry => {
        Id      => 'MyNonEmptyString',    # OPTIONAL
        IsAlias => 1,                     # OPTIONAL
        Name    => 'MyDomainName',        # OPTIONAL
        Options => {
          'MyDomainEntryOptionsKeys' => 'Mystring',    # , value: OPTIONAL
        },    # OPTIONAL
        Target => 'Mystring',             # OPTIONAL
        Type   => 'MyDomainEntryType',    # OPTIONAL
      },
      DomainName => 'MyDomainName',

    );

    # Results:
    my $Operation = $CreateDomainEntryResult->Operation;

    # Returns a L<Paws::Lightsail::CreateDomainEntryResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CreateDomainEntry>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainEntry => L<Paws::Lightsail::DomainEntry>

An array of key-value pairs containing information about the domain
entry request.



=head2 B<REQUIRED> DomainName => Str

The domain name (e.g., C<example.com>) for which you want to create the
domain entry.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDomainEntry in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

