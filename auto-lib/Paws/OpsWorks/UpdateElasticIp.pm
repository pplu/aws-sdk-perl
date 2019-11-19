# Generated from json/callargs_class.tt

package Paws::OpsWorks::UpdateElasticIp;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::OpsWorks::Types qw//;
  has ElasticIp => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Name => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateElasticIp');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ElasticIp' => 1
                  },
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'ElasticIp' => {
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

Paws::OpsWorks::UpdateElasticIp - Arguments for method UpdateElasticIp on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateElasticIp on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method UpdateElasticIp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateElasticIp.

=head1 SYNOPSIS

    my $opsworks = Paws->service('OpsWorks');
    $opsworks->UpdateElasticIp(
      ElasticIp => 'MyString',
      Name      => 'MyString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/UpdateElasticIp>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ElasticIp => Str

The IP address for which you want to update the name.



=head2 Name => Str

The new name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateElasticIp in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

