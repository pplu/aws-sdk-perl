
package Paws::Amplify::UpdateDomainAssociation;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::Amplify::Types qw/Amplify_SubDomainSetting/;
  has AppId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DomainName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has EnableAutoSubDomain => (is => 'ro', isa => Bool, predicate => 1);
  has SubDomainSettings => (is => 'ro', isa => ArrayRef[Amplify_SubDomainSetting], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateDomainAssociation');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/apps/{appId}/domains/{domainName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Amplify::UpdateDomainAssociationResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SubDomainSettings' => {
                                        'class' => 'Paws::Amplify::SubDomainSetting',
                                        'type' => 'ArrayRef[Amplify_SubDomainSetting]'
                                      },
               'EnableAutoSubDomain' => {
                                          'type' => 'Bool'
                                        },
               'DomainName' => {
                                 'type' => 'Str'
                               },
               'AppId' => {
                            'type' => 'Str'
                          }
             },
  'ParamInURI' => {
                    'DomainName' => 'domainName',
                    'AppId' => 'appId'
                  },
  'NameInRequest' => {
                       'SubDomainSettings' => 'subDomainSettings',
                       'EnableAutoSubDomain' => 'enableAutoSubDomain'
                     },
  'IsRequired' => {
                    'SubDomainSettings' => 1,
                    'DomainName' => 1,
                    'AppId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::UpdateDomainAssociation - Arguments for method UpdateDomainAssociation on L<Paws::Amplify>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDomainAssociation on the
L<AWS Amplify|Paws::Amplify> service. Use the attributes of this class
as arguments to method UpdateDomainAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDomainAssociation.

=head1 SYNOPSIS

    my $amplify = Paws->service('Amplify');
    my $UpdateDomainAssociationResult = $amplify->UpdateDomainAssociation(
      AppId             => 'MyAppId',
      DomainName        => 'MyDomainName',
      SubDomainSettings => [
        {
          BranchName => 'MyBranchName',      # min: 1, max: 255
          Prefix     => 'MyDomainPrefix',    # max: 255

        },
        ...
      ],
      EnableAutoSubDomain => 1,              # OPTIONAL
    );

    # Results:
    my $DomainAssociation = $UpdateDomainAssociationResult->DomainAssociation;

    # Returns a L<Paws::Amplify::UpdateDomainAssociationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/UpdateDomainAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

Unique Id for an Amplify App.



=head2 B<REQUIRED> DomainName => Str

Name of the domain.



=head2 EnableAutoSubDomain => Bool

Enables automated creation of Subdomains for branches.



=head2 B<REQUIRED> SubDomainSettings => ArrayRef[Amplify_SubDomainSetting]

Setting structure for the Subdomain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDomainAssociation in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

