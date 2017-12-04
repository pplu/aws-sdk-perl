package Paws::API::Region {
  use MooseX::DataModel;
  key description => (isa => 'Str');
}
package Paws::API::CredentialScope {
  use MooseX::DataModel;
  key service => (isa => 'Str');
}
package Paws::API::ServiceEndpoint {
  use MooseX::DataModel;
  key hostname => (isa => 'Str');
  array protocols => (isa => 'Str');
  array signatureVersion => (isa => 'Str');
  key credentialScope => (isa =>  'Paws::API::CredentialScope');
  key sslCommonName => (isa => 'Str');
}

use Moose::Util::TypeConstraints;
use JSON::MaybeXS;
 
class_type 'JSON::PP::Boolean', { class => 'JSON::PP::Boolean' };

subtype 'JBool',
     as 'Bool';
coerce 'JBool',
  from 'JSON::PP::Boolean',
   via {
     ($_ == 1) ? 1 : 0;
   };

package Paws::API::ServiceDefaults {
  use MooseX::DataModel;
  key credentialScope => (isa => 'Paws::API::CredentialScope');
}

package Paws::API::Service {
  use MooseX::DataModel;
  object endpoints => (isa => 'Paws::API::ServiceEndpoint');
  key defaults => (isa => 'Paws::API::ServiceDefaults');
  key isRegionalized  => (isa => 'JBool', default => sub { 1 });
  key partitionEndpoint => (isa => 'Str');
}
package Paws::API::Partition {
  use MooseX::DataModel;
  key defaults => (isa => 'Paws::API::ServiceEndpoint');
  key dnsSuffix => (isa => 'Str');
  key partition => (isa => 'Str');
  key partitionName => (isa => 'Str');
  key regionRegex => (isa => 'Str');
  object regions => (isa => 'Paws::API::Region');
  object services => (isa => 'Paws::API::Service');
}
package Paws::API::Endpoints {
   use MooseX::DataModel;
   array partitions => (isa => 'Paws::API::Partition');
}
package Paws::API::RegionBuilder {
  use Moose;
  use autodie;
  use JSON::MaybeXS;
  use Data::Dumper;
  use Template;
  use File::Slurper 'read_text';

  has rules =>   (is => 'rw', isa => 'Str', required => 1);
  has service => (is => 'ro', isa => 'Str', required => 1);

  has schema => ( 
    is => 'ro', 
    lazy => 1,
    default => sub {
      my $self = shift;
      my $json = read_text($self->rules);
      Paws::API::Endpoints->new(decode_json($json));
    }
  );

  has partitions => (
     is => 'ro',
     lazy => 1,
     isa => 'ArrayRef',
     default => sub {
       my $self = shift;
       my $svc = [];
       foreach my $partition (@{ $self->schema->partitions }) {
         push @$svc, $partition if (defined $partition->services->{ $self->service });
       }
       return $svc;
     },
  );

  has endpoints => (
    is => 'ro',
    isa => 'HashRef[HashRef]',
    lazy => 1,
    default => sub {
      my $self = shift;

use Data::Dumper;

      my $region_rules = {};
      foreach my $partition (@{ $self->partitions }) {
print Dumper($partition);
        foreach my $region (keys %{ $partition->services->{ $self->service }->endpoints }) {
          my $service = $partition->services->{ $self->service };
print Dumper($service);          
          my $credscope = (defined $service->defaults and defined $service->defaults->credentialScope)?$service->defaults->credentialScope->service:undef;
          my $hostname = $partition->defaults->hostname;
          $hostname =~ s|{service}|$self->service|e;
          $hostname =~ s|{region}|$region|;
          $hostname =~ s|{dnsSuffix}|$partition->dnsSuffix|e;
          $region_rules->{ $region } = {
            hostname => $hostname,
            (defined $credscope)? (signature => $credscope) : (),
            #TODO: region => ...
          } 
        }
      }
      return $region_rules;
    }
  );

  has perl_ds => (
    is => 'ro',
    isa => 'Str',
    lazy => 1,
    default => sub {
      my $self = shift;

      my $d = Data::Dumper->new([ $self->endpoints ], [ 'regioninfo' ]);
      $d->Indent(1);
      $d->Pad('  ');
      $d->Quotekeys(0);
      $d->Sortkeys(1);
      return $d->Dump;
    }
  );

   has region_accessor_template => (is => 'ro', isa => 'Str', default => q#
  has '+region_rules' => (default => sub {
    my $regioninfo;
    [% c.perl_ds %]
    return $regioninfo;
  });
#);

  sub region_accessor {
    my ($self) = @_;
    my $tt = Template->new;
    my $template = $self->region_accessor_template;
    my $output = '';
    $tt->process(\$template, { c => $self }, \$output) || die $tt->error();
    return $output;
  }
}
1;

