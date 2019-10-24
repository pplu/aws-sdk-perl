# Generated from json/callargs_class.tt

package Paws::ECS::DeleteService;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::ECS::Types qw//;
  has Cluster => (is => 'ro', isa => Str, predicate => 1);
  has Force => (is => 'ro', isa => Bool, predicate => 1);
  has Service => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteService');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ECS::DeleteServiceResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Cluster' => {
                              'type' => 'Str'
                            },
               'Force' => {
                            'type' => 'Bool'
                          },
               'Service' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'Cluster' => 'cluster',
                       'Force' => 'force',
                       'Service' => 'service'
                     },
  'IsRequired' => {
                    'Service' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DeleteService - Arguments for method DeleteService on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteService on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method DeleteService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteService.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    # To delete a service
    # This example deletes the my-http-service service. The service must have a
    # desired count and running count of 0 before you can delete it.
    my $DeleteServiceResponse =
      $ecs->DeleteService( 'Service' => 'my-http-service' );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/DeleteService>

=head1 ATTRIBUTES


=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
hosts the service to delete. If you do not specify a cluster, the
default cluster is assumed.



=head2 Force => Bool

If C<true>, allows you to delete a service even if it has not been
scaled down to zero tasks. It is only necessary to use this if the
service is using the C<REPLICA> scheduling strategy.



=head2 B<REQUIRED> Service => Str

The name of the service to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteService in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

