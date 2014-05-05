/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Classes;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author João Pedro
 */
@Entity
@Table(name = "TRIPS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Trips.findAll", query = "SELECT t FROM Trips t"),
    @NamedQuery(name = "Trips.findByIdTrip", query = "SELECT t FROM Trips t WHERE t.idTrip = :idTrip"),
    @NamedQuery(name = "Trips.findByIdBus", query = "SELECT t FROM Trips t WHERE t.idBus = :idBus"),
    @NamedQuery(name = "Trips.findByOrigin", query = "SELECT t FROM Trips t WHERE t.origin = :origin"),
    @NamedQuery(name = "Trips.findByDestination", query = "SELECT t FROM Trips t WHERE t.destination = :destination")})
public class Trips implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "ID_TRIP")
    private Integer idTrip;
    @Column(name = "ID_BUS")
    private Integer idBus;
    @Size(max = 20)
    @Column(name = "ORIGIN")
    private String origin;
    @Size(max = 20)
    @Column(name = "DESTINATION")
    private String destination;

    public Trips() {
    }

    public Trips(Integer idTrip) {
        this.idTrip = idTrip;
    }

    public Integer getIdTrip() {
        return idTrip;
    }

    public void setIdTrip(Integer idTrip) {
        this.idTrip = idTrip;
    }

    public Integer getIdBus() {
        return idBus;
    }

    public void setIdBus(Integer idBus) {
        this.idBus = idBus;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idTrip != null ? idTrip.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Trips)) {
            return false;
        }
        Trips other = (Trips) object;
        if ((this.idTrip == null && other.idTrip != null) || (this.idTrip != null && !this.idTrip.equals(other.idTrip))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Classes.Trips[ idTrip=" + idTrip + " ]";
    }
    
}
