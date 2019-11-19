
package Paws::RAM::ListResources;
  use Moo;
  use Types::Standard qw/Str Int Undef ArrayRef/;
  use Paws::RAM::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has Principal => (is => 'ro', isa => Str, predicate => 1);
  has ResourceArns => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has ResourceOwner => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ResourceShareArns => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has ResourceType => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListResources');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/listresources');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RAM::ListResourcesResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               'ResourceOwner' => {
                                    'type' => 'Str'
                                  },
               'Principal' => {
                                'type' => 'Str'
                              },
               'ResourceShareArns' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               'ResourceArns' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 }
             },
  'IsRequired' => {
                    'ResourceOwner' => 1
                  },
  'NameInRequest' => {
                       'MaxResults' => 'maxResults',
                       'NextToken' => 'nextToken',
                       'ResourceType' => 'resourceType',
                       'Principal' => 'principal',
                       'ResourceOwner' => 'resourceOwner',
                       'ResourceShareArns' => 'resourceShareArns',
                       'ResourceArns' => 'resourceArns'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::ListResources - Arguments for method ListResources on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResources on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method ListResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResources.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $ListResourcesResponse = $ram->ListResources(
      ResourceOwner     => 'SELF',
      MaxResults        => 1,                      # OPTIONAL
      NextToken         => 'MyString',             # OPTIONAL
      Principal         => 'MyString',             # OPTIONAL
      ResourceArns      => [ 'MyString', ... ],    # OPTIONAL
      ResourceShareArns => [ 'MyString', ... ],    # OPTIONAL
      ResourceType      => 'MyString',             # OPTIONAL
    );

    # Results:
    my $NextToken = $ListResourcesResponse->NextToken;
    my $Resources = $ListResourcesResponse->Resources;

    # Returns a L<Paws::RAM::ListResourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/ListResources>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.



=head2 Principal => Str

The principal.



=head2 ResourceArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARN) of the resources.



=head2 B<REQUIRED> ResourceOwner => Str

The type of owner.

Valid values are: C<"SELF">, C<"OTHER-ACCOUNTS">

=head2 ResourceShareArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARN) of the resource shares.



=head2 ResourceType => Str

The resource type.

Valid values: C<route53resolver:ResolverRule> | C<ec2:TransitGateway> |
C<ec2:Subnet> | C<license-manager:LicenseConfiguration>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResources in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

