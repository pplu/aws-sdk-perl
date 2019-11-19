# Generated from json/callargs_class.tt

package Paws::Config::PutRemediationExceptions;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_RemediationExceptionResourceKey/;
  has ConfigRuleName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ExpirationTime => (is => 'ro', isa => Str, predicate => 1);
  has Message => (is => 'ro', isa => Str, predicate => 1);
  has ResourceKeys => (is => 'ro', isa => ArrayRef[Config_RemediationExceptionResourceKey], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutRemediationExceptions');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Config::PutRemediationExceptionsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ExpirationTime' => {
                                     'type' => 'Str'
                                   },
               'Message' => {
                              'type' => 'Str'
                            },
               'ResourceKeys' => {
                                   'class' => 'Paws::Config::RemediationExceptionResourceKey',
                                   'type' => 'ArrayRef[Config_RemediationExceptionResourceKey]'
                                 },
               'ConfigRuleName' => {
                                     'type' => 'Str'
                                   }
             },
  'IsRequired' => {
                    'ResourceKeys' => 1,
                    'ConfigRuleName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutRemediationExceptions - Arguments for method PutRemediationExceptions on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRemediationExceptions on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method PutRemediationExceptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRemediationExceptions.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $PutRemediationExceptionsResponse = $config->PutRemediationExceptions(
      ConfigRuleName => 'MyConfigRuleName',
      ResourceKeys   => [
        {
          ResourceId =>
            'MyStringWithCharLimit1024',    # min: 1, max: 1024; OPTIONAL
          ResourceType =>
            'MyStringWithCharLimit256',     # min: 1, max: 256; OPTIONAL
        },
        ...
      ],
      ExpirationTime => '1970-01-01T01:00:00',          # OPTIONAL
      Message        => 'MyStringWithCharLimit1024',    # OPTIONAL
    );

    # Results:
    my $FailedBatches = $PutRemediationExceptionsResponse->FailedBatches;

    # Returns a L<Paws::Config::PutRemediationExceptionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/PutRemediationExceptions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigRuleName => Str

The name of the AWS Config rule for which you want to create
remediation exception.



=head2 ExpirationTime => Str

The exception is automatically deleted after the expiration date.



=head2 Message => Str

The message contains an explanation of the exception.



=head2 B<REQUIRED> ResourceKeys => ArrayRef[Config_RemediationExceptionResourceKey]

An exception list of resource exception keys to be processed with the
current request. AWS Config adds exception for each resource key. For
example, AWS Config adds 3 exceptions for 3 resource keys.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRemediationExceptions in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

