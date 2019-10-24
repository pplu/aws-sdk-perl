
package Paws::ApiGateway::GetApiKeys;
  use Moo;
  use Types::Standard qw/Str Bool Int/;
  use Paws::ApiGateway::Types qw//;
  has CustomerId => (is => 'ro', isa => Str, predicate => 1);
  has IncludeValues => (is => 'ro', isa => Bool, predicate => 1);
  has Limit => (is => 'ro', isa => Int, predicate => 1);
  has NameQuery => (is => 'ro', isa => Str, predicate => 1);
  has Position => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetApiKeys');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/apikeys');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApiGateway::ApiKeys');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Position' => {
                               'type' => 'Str'
                             },
               'IncludeValues' => {
                                    'type' => 'Bool'
                                  },
               'CustomerId' => {
                                 'type' => 'Str'
                               },
               'Limit' => {
                            'type' => 'Int'
                          },
               'NameQuery' => {
                                'type' => 'Str'
                              }
             },
  'ParamInQuery' => {
                      'Position' => 'position',
                      'IncludeValues' => 'includeValues',
                      'CustomerId' => 'customerId',
                      'Limit' => 'limit',
                      'NameQuery' => 'name'
                    }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetApiKeys - Arguments for method GetApiKeys on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetApiKeys on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method GetApiKeys.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetApiKeys.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $ApiKeys = $apigateway->GetApiKeys(
      CustomerId    => 'MyString',    # OPTIONAL
      IncludeValues => 1,             # OPTIONAL
      Limit         => 1,             # OPTIONAL
      NameQuery     => 'MyString',    # OPTIONAL
      Position      => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Items    = $ApiKeys->Items;
    my $Position = $ApiKeys->Position;
    my $Warnings = $ApiKeys->Warnings;

    # Returns a L<Paws::ApiGateway::ApiKeys> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetApiKeys>

=head1 ATTRIBUTES


=head2 CustomerId => Str

The identifier of a customer in AWS Marketplace or an external system,
such as a developer portal.



=head2 IncludeValues => Bool

A boolean flag to specify whether (C<true>) or not (C<false>) the
result contains key values.



=head2 Limit => Int

The maximum number of returned results per page. The default value is
25 and the maximum value is 500.



=head2 NameQuery => Str

The name of queried API keys.



=head2 Position => Str

The current pagination position in the paged result set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetApiKeys in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

