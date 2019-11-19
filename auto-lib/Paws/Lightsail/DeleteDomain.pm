# Generated from json/callargs_class.tt

package Paws::Lightsail::DeleteDomain;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw//;
  has DomainName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteDomain');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Lightsail::DeleteDomainResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DomainName' => 1
                  },
  'NameInRequest' => {
                       'DomainName' => 'domainName'
                     },
  'types' => {
               'DomainName' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::DeleteDomain - Arguments for method DeleteDomain on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDomain on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method DeleteDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDomain.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $DeleteDomainResult = $lightsail->DeleteDomain(
      DomainName => 'MyDomainName',

    );

    # Results:
    my $Operation = $DeleteDomainResult->Operation;

    # Returns a L<Paws::Lightsail::DeleteDomainResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/DeleteDomain>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The specific domain name to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDomain in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

