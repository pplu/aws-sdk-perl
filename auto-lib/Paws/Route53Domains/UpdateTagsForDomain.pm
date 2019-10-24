# Generated from json/callargs_class.tt

package Paws::Route53Domains::UpdateTagsForDomain;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Route53Domains::Types qw/Route53Domains_Tag/;
  has DomainName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TagsToUpdate => (is => 'ro', isa => ArrayRef[Route53Domains_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateTagsForDomain');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Route53Domains::UpdateTagsForDomainResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TagsToUpdate' => {
                                   'class' => 'Paws::Route53Domains::Tag',
                                   'type' => 'ArrayRef[Route53Domains_Tag]'
                                 },
               'DomainName' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'DomainName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::UpdateTagsForDomain - Arguments for method UpdateTagsForDomain on L<Paws::Route53Domains>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTagsForDomain on the
L<Amazon Route 53 Domains|Paws::Route53Domains> service. Use the attributes of this class
as arguments to method UpdateTagsForDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTagsForDomain.

=head1 SYNOPSIS

    my $route53domains = Paws->service('Route53Domains');
    my $UpdateTagsForDomainResponse = $route53domains->UpdateTagsForDomain(
      DomainName   => 'MyDomainName',
      TagsToUpdate => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],                            # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53domains/UpdateTagsForDomain>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The domain for which you want to add or update tags.



=head2 TagsToUpdate => ArrayRef[Route53Domains_Tag]

A list of the tag keys and values that you want to add or update. If
you specify a key that already exists, the corresponding value will be
replaced.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTagsForDomain in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

