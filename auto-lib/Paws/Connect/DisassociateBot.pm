
package Paws::Connect::DisassociateBot;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has LexBot => (is => 'ro', isa => 'Paws::Connect::LexBot');
  has LexV2Bot => (is => 'ro', isa => 'Paws::Connect::LexV2Bot');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateBot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/instance/{InstanceId}/bot');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DisassociateBot - Arguments for method DisassociateBot on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateBot on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method DisassociateBot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateBot.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->DisassociateBot(
      InstanceId => 'MyInstanceId',
      LexBot     => {
        LexRegion => 'MyLexRegion',    # max: 60; OPTIONAL
        Name      => 'MyBotName',      # max: 50; OPTIONAL
      },    # OPTIONAL
      LexV2Bot => {
        AliasArn => 'MyAliasArn',    # min: 1, max: 100; OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/DisassociateBot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instanceId in the ARN of the instance.



=head2 LexBot => L<Paws::Connect::LexBot>





=head2 LexV2Bot => L<Paws::Connect::LexV2Bot>

The Amazon Lex V2 bot to disassociate from the instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateBot in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

