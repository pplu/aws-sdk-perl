# Generated from json/callargs_class.tt

package Paws::Lightsail::UpdateRelationalDatabaseParameters;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_RelationalDatabaseParameter/;
  has Parameters => (is => 'ro', isa => ArrayRef[Lightsail_RelationalDatabaseParameter], required => 1, predicate => 1);
  has RelationalDatabaseName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateRelationalDatabaseParameters');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Lightsail::UpdateRelationalDatabaseParametersResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'RelationalDatabaseName' => 1,
                    'Parameters' => 1
                  },
  'NameInRequest' => {
                       'RelationalDatabaseName' => 'relationalDatabaseName',
                       'Parameters' => 'parameters'
                     },
  'types' => {
               'RelationalDatabaseName' => {
                                             'type' => 'Str'
                                           },
               'Parameters' => {
                                 'type' => 'ArrayRef[Lightsail_RelationalDatabaseParameter]',
                                 'class' => 'Paws::Lightsail::RelationalDatabaseParameter'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::UpdateRelationalDatabaseParameters - Arguments for method UpdateRelationalDatabaseParameters on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRelationalDatabaseParameters on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method UpdateRelationalDatabaseParameters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRelationalDatabaseParameters.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $UpdateRelationalDatabaseParametersResult =
      $lightsail->UpdateRelationalDatabaseParameters(
      Parameters => [
        {
          AllowedValues  => 'Mystring',    # OPTIONAL
          ApplyMethod    => 'Mystring',    # OPTIONAL
          ApplyType      => 'Mystring',    # OPTIONAL
          DataType       => 'Mystring',    # OPTIONAL
          Description    => 'Mystring',    # OPTIONAL
          IsModifiable   => 1,             # OPTIONAL
          ParameterName  => 'Mystring',    # OPTIONAL
          ParameterValue => 'Mystring',    # OPTIONAL
        },
        ...
      ],
      RelationalDatabaseName => 'MyResourceName',

      );

    # Results:
    my $Operations = $UpdateRelationalDatabaseParametersResult->Operations;

# Returns a L<Paws::Lightsail::UpdateRelationalDatabaseParametersResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/UpdateRelationalDatabaseParameters>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Parameters => ArrayRef[Lightsail_RelationalDatabaseParameter]

The database parameters to update.



=head2 B<REQUIRED> RelationalDatabaseName => Str

The name of your database for which to update parameters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRelationalDatabaseParameters in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

