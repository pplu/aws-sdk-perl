
package Paws::Chime::CreateBot;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw//;
  has AccountId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DisplayName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Domain => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateBot');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/accounts/{accountId}/bots');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Chime::CreateBotResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AccountId' => {
                                'type' => 'Str'
                              },
               'Domain' => {
                             'type' => 'Str'
                           },
               'DisplayName' => {
                                  'type' => 'Str'
                                }
             },
  'ParamInURI' => {
                    'AccountId' => 'accountId'
                  },
  'IsRequired' => {
                    'AccountId' => 1,
                    'DisplayName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateBot - Arguments for method CreateBot on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBot on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method CreateBot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBot.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $CreateBotResponse = $chime->CreateBot(
      AccountId   => 'MyNonEmptyString',
      DisplayName => 'MySensitiveString',
      Domain      => 'MyNonEmptyString',    # OPTIONAL
    );

    # Results:
    my $Bot = $CreateBotResponse->Bot;

    # Returns a L<Paws::Chime::CreateBotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/CreateBot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Chime account ID.



=head2 B<REQUIRED> DisplayName => Str

The bot display name.



=head2 Domain => Str

The domain of the Amazon Chime Enterprise account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBot in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

